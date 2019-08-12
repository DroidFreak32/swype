.class public Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
.super Lcom/fsck/k9/mail/Folder;
.source "LocalStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFolder"
.end annotation


# instance fields
.field private displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private inTopGroup:Z

.field private mFlaggedMessageCount:I

.field private mFolderId:J

.field private mIntegrate:Z

.field private mName:Ljava/lang/String;

.field private mPushState:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private mVisibleLimit:I

.field private prefId:Ljava/lang/String;

.field private pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field private syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;J)V
    .locals 6
    .param p2, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1085
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    .line 1086
    invoke-static {p1}, Lcom/fsck/k9/mail/store/LocalStore;->access$700(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/Folder;-><init>(Lcom/fsck/k9/Account;)V

    .line 1055
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 1056
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 1057
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 1058
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    .line 1059
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 1060
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1061
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1062
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1063
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    .line 1064
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    .line 1065
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    .line 1066
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    .line 1087
    iput-wide p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 1088
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V
    .locals 5
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1070
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    .line 1071
    invoke-static {p1}, Lcom/fsck/k9/mail/store/LocalStore;->access$600(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/Folder;-><init>(Lcom/fsck/k9/Account;)V

    .line 1055
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 1056
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 1057
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 1058
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    .line 1059
    iput v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 1060
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1061
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1062
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1063
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    .line 1064
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    .line 1065
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    .line 1066
    iput-boolean v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    .line 1072
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 1074
    const-string v0, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1077
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    .line 1082
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # I

    .prologue
    .line 1053
    iput p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # I

    .prologue
    .line 1053
    iput p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    return p1
.end method

.method static synthetic access$1301(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    return-void
.end method

.method static synthetic access$1401(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v0
.end method

.method static synthetic access$1502(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # I

    .prologue
    .line 1053
    iput p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return p1
.end method

.method static synthetic access$1601(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/Folder;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/Part;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/fsck/k9/mail/Part;
    .param p4, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/fsck/k9/mail/Part;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/fsck/k9/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteHeaders(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # J
    .param p11, "x9"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct/range {p0 .. p11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$3000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(J)V

    return-void
.end method

.method static synthetic access$4000(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "x1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->populateHeaders(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .prologue
    .line 1053
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method private appendMessages([Lcom/fsck/k9/mail/Message;Z)V
    .locals 3
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2283
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2286
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$19;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;[Lcom/fsck/k9/mail/Message;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2428
    return-void

    .line 2425
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method private clearMessagesWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2855
    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2856
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$2000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FROM messages WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, p0, v6, p2}, Lcom/fsck/k9/mail/store/LocalStore;->access$2100(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/controller/MessageRetrievalListener;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 2862
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2864
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    .line 2862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2866
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v4}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$25;

    invoke-direct {v6, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$25;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2875
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->resetUnreadAndFlaggedCounts()V

    .line 2876
    return-void
.end method

.method private deleteAttachments(J)V
    .locals 3
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2995
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2996
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$27;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 3036
    return-void
.end method

.method private deleteAttachments(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3040
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 3043
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$28;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$28;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3079
    return-void

    .line 3076
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method private deleteHeaders(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$22;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$22;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2616
    return-void
.end method

.method private getPrefId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1643
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1645
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    iget-object v1, v1, Lcom/fsck/k9/mail/store/LocalStore;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->prefId:Ljava/lang/String;

    return-object v0
.end method

.method private htmlifyMessageFooter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3240
    invoke-static {}, Lcom/fsck/k9/K9;->messageViewFixedWidthFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3242
    const-string v0, "</pre>"

    .line 3246
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "</div>"

    goto :goto_0
.end method

.method private htmlifyMessageHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3227
    invoke-static {}, Lcom/fsck/k9/K9;->messageViewFixedWidthFont()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3229
    const-string v0, "<pre style=\"white-space: pre-wrap; word-wrap:break-word; \">"

    .line 3233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<div style=\"white-space: pre-wrap; word-wrap:break-word; \">"

    goto :goto_0
.end method

.method private open(ILjava/lang/String;IIJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "unreadCount"    # I
    .param p4, "visibleLimit"    # I
    .param p5, "lastChecked"    # J
    .param p7, "status"    # Ljava/lang/String;
    .param p8, "pushState"    # Ljava/lang/String;
    .param p9, "lastPushed"    # J
    .param p11, "flaggedCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1161
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 1162
    iput-object p2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 1163
    iput p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 1164
    iput p4, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 1165
    iput-object p8, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    .line 1166
    iput p11, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    .line 1167
    invoke-super {p0, p7}, Lcom/fsck/k9/mail/Folder;->setStatus(Ljava/lang/String;)V

    .line 1170
    invoke-super {p0, p5, p6}, Lcom/fsck/k9/mail/Folder;->setLastChecked(J)V

    .line 1171
    invoke-super {p0, p9, p10}, Lcom/fsck/k9/mail/Folder;->setLastPush(J)V

    .line 1172
    return-void
.end method

.method private populateHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 1961
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;>;"
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$14;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2015
    return-void
.end method

.method private resetUnreadAndFlaggedCounts()V
    .locals 9

    .prologue
    .line 2910
    const/4 v6, 0x0

    .line 2911
    .local v6, "newUnread":I
    const/4 v5, 0x0

    .line 2912
    .local v5, "newFlagged":I
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 2913
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 2915
    .local v4, "message":Lcom/fsck/k9/mail/Message;
    sget-object v7, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2917
    add-int/lit8 v6, v6, 0x1

    .line 2919
    :cond_0
    sget-object v7, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v7}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2921
    add-int/lit8 v5, v5, 0x1

    .line 2913
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2924
    .end local v4    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2925
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2931
    .end local v0    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return-void

    .line 2927
    :catch_0
    move-exception v1

    .line 2929
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "k9"

    const-string v8, "Unable to fetch all messages from LocalStore"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private saveAttachment(JLcom/fsck/k9/mail/Part;Z)V
    .locals 9
    .param p1, "messageId"    # J
    .param p3, "attachment"    # Lcom/fsck/k9/mail/Part;
    .param p4, "saveAsNew"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2630
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v7

    const/4 v8, 0x1

    new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$23;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ZLcom/fsck/k9/mail/Part;J)V

    invoke-virtual {v7, v8, v0}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2800
    return-void

    .line 2789
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 2792
    .local v6, "cause":Ljava/lang/Throwable;
    instance-of v0, v6, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 2794
    check-cast v6, Ljava/io/IOException;

    .end local v6    # "cause":Ljava/lang/Throwable;
    throw v6

    .line 2798
    .restart local v6    # "cause":Ljava/lang/Throwable;
    :cond_0
    check-cast v6, Lcom/fsck/k9/mail/MessagingException;

    .end local v6    # "cause":Ljava/lang/Throwable;
    throw v6
.end method

.method private saveHeaders(JLcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/fsck/k9/mail/internet/MimeMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$21;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;JLcom/fsck/k9/mail/internet/MimeMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2602
    return-void
.end method


# virtual methods
.method public appendMessages([Lcom/fsck/k9/mail/Message;)V
    .locals 1
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V

    .line 2268
    return-void
.end method

.method public calculateContentPreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2000

    const/16 v4, 0x200

    const/4 v3, 0x0

    .line 3095
    if-nez p1, :cond_0

    .line 3097
    const/4 v0, 0x0

    .line 3123
    :goto_0
    return-object v0

    .line 3103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 3105
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3109
    :cond_1
    const-string v0, "(?m)^----.*?$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3110
    const-string v1, "(?m)^[#>].*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3111
    const-string v1, "(?m)^On .*wrote.?$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3112
    const-string v1, "(?m)^.*\\w+:$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3113
    const-string v1, "https?://\\S+"

    const-string v2, "..."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3114
    const-string v1, "(\\r|\\n)+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3115
    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_2

    move-object v0, p1

    .line 3118
    goto :goto_0

    .line 3122
    :cond_2
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2810
    sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2812
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2813
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;

    invoke-direct {v3, p0, v0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$24;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Landroid/content/ContentValues;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 2823
    return-void
.end method

.method public clearAllMessages()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 2893
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2900
    .local v0, "params":[Ljava/lang/String;
    const-string v1, "folder_id = ?"

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->clearMessagesWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2901
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {p0, v4, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastPush(J)V

    .line 2903
    invoke-virtual {p0, v4, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastChecked(J)V

    .line 2904
    return-void
.end method

.method public clearMessagesOlderThan(J)V
    .locals 5
    .param p1, "cutoff"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2880
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2886
    .local v0, "params":[Ljava/lang/String;
    const-string v1, "folder_id = ? and date < ?"

    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->clearMessagesWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2887
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1277
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 1278
    return-void
.end method

.method public convertEmoji2ImgForDocomo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 3252
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3253
    .local v3, "reader":Ljava/io/StringReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x200

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3254
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3257
    .local v1, "c":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/StringReader;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3259
    sparse-switch v1, :sswitch_data_0

    .line 5273
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5277
    :catch_0
    move-exception v2

    .line 5280
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "k9"

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5283
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3264
    :sswitch_0
    :try_start_1
    const-string v4, "<img src=\"file:///android_asset/emoticons/kissmark.gif\" alt=\"kissmark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3267
    :sswitch_1
    const-string v4, "<img src=\"file:///android_asset/emoticons/wink.gif\" alt=\"wink\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3270
    :sswitch_2
    const-string v4, "<img src=\"file:///android_asset/emoticons/info02.gif\" alt=\"info02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3273
    :sswitch_3
    const-string v4, "<img src=\"file:///android_asset/emoticons/smile.gif\" alt=\"smile\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3276
    :sswitch_4
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart.gif\" alt=\"heart\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3279
    :sswitch_5
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardleft.gif\" alt=\"downwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3282
    :sswitch_6
    const-string v4, "<img src=\"file:///android_asset/emoticons/pouch.gif\" alt=\"pouch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3285
    :sswitch_7
    const-string v4, "<img src=\"file:///android_asset/emoticons/by-d.gif\" alt=\"by-d\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3288
    :sswitch_8
    const-string v4, "<img src=\"file:///android_asset/emoticons/free.gif\" alt=\"free\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3291
    :sswitch_9
    const-string v4, "<img src=\"file:///android_asset/emoticons/seven.gif\" alt=\"seven\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3294
    :sswitch_a
    const-string v4, "<img src=\"file:///android_asset/emoticons/snail.gif\" alt=\"snail\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3297
    :sswitch_b
    const-string v4, "<img src=\"file:///android_asset/emoticons/basketball.gif\" alt=\"basketball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3300
    :sswitch_c
    const-string v4, "<img src=\"file:///android_asset/emoticons/pocketbell.gif\" alt=\"pocketbell\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3303
    :sswitch_d
    const-string v4, "<img src=\"file:///android_asset/emoticons/two.gif\" alt=\"two\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3306
    :sswitch_e
    const-string v4, "<img src=\"file:///android_asset/emoticons/cake.gif\" alt=\"cake\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3309
    :sswitch_f
    const-string v4, "<img src=\"file:///android_asset/emoticons/faxto.gif\" alt=\"faxto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3312
    :sswitch_10
    const-string v4, "<img src=\"file:///android_asset/emoticons/ship.gif\" alt=\"ship\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3315
    :sswitch_11
    const-string v4, "<img src=\"file:///android_asset/emoticons/virgo.gif\" alt=\"virgo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3318
    :sswitch_12
    const-string v4, "<img src=\"file:///android_asset/emoticons/ticket.gif\" alt=\"ticket\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3321
    :sswitch_13
    const-string v4, "<img src=\"file:///android_asset/emoticons/yen.gif\" alt=\"yen\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3324
    :sswitch_14
    const-string v4, "<img src=\"file:///android_asset/emoticons/sharp.gif\" alt=\"sharp\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3327
    :sswitch_15
    const-string v4, "<img src=\"file:///android_asset/emoticons/bomb.gif\" alt=\"bomb\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3330
    :sswitch_16
    const-string v4, "<img src=\"file:///android_asset/emoticons/mobaq.gif\" alt=\"mobaq\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3333
    :sswitch_17
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign05.gif\" alt=\"sign05\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3336
    :sswitch_18
    const-string v4, "<img src=\"file:///android_asset/emoticons/bank.gif\" alt=\"bank\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3339
    :sswitch_19
    const-string v4, "<img src=\"file:///android_asset/emoticons/copyright.gif\" alt=\"copyright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3342
    :sswitch_1a
    const-string v4, "<img src=\"file:///android_asset/emoticons/upwardright.gif\" alt=\"upwardright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3345
    :sswitch_1b
    const-string v4, "<img src=\"file:///android_asset/emoticons/scissors.gif\" alt=\"scissors\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3348
    :sswitch_1c
    const-string v4, "<img src=\"file:///android_asset/emoticons/bag.gif\" alt=\"bag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3351
    :sswitch_1d
    const-string v4, "<img src=\"file:///android_asset/emoticons/scorpius.gif\" alt=\"scorpius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3354
    :sswitch_1e
    const-string v4, "<img src=\"file:///android_asset/emoticons/key.gif\" alt=\"key\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3357
    :sswitch_1f
    const-string v4, "<img src=\"file:///android_asset/emoticons/secret.gif\" alt=\"secret\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3360
    :sswitch_20
    const-string v4, "<img src=\"file:///android_asset/emoticons/chick.gif\" alt=\"chick\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3363
    :sswitch_21
    const-string v4, "<img src=\"file:///android_asset/emoticons/eye.gif\" alt=\"eye\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3366
    :sswitch_22
    const-string v4, "<img src=\"file:///android_asset/emoticons/ok.gif\" alt=\"ok\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3369
    :sswitch_23
    const-string v4, "<img src=\"file:///android_asset/emoticons/door.gif\" alt=\"door\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3372
    :sswitch_24
    const-string v4, "<img src=\"file:///android_asset/emoticons/capricornus.gif\" alt=\"capricornus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3375
    :sswitch_25
    const-string v4, "<img src=\"file:///android_asset/emoticons/boutique.gif\" alt=\"boutique\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3378
    :sswitch_26
    const-string v4, "<img src=\"file:///android_asset/emoticons/lovely.gif\" alt=\"lovely\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3381
    :sswitch_27
    const-string v4, "<img src=\"file:///android_asset/emoticons/diamond.gif\" alt=\"diamond\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3384
    :sswitch_28
    const-string v4, "<img src=\"file:///android_asset/emoticons/wheelchair.gif\" alt=\"wheelchair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3387
    :sswitch_29
    const-string v4, "<img src=\"file:///android_asset/emoticons/maple.gif\" alt=\"maple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3390
    :sswitch_2a
    const-string v4, "<img src=\"file:///android_asset/emoticons/libra.gif\" alt=\"libra\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3393
    :sswitch_2b
    const-string v4, "<img src=\"file:///android_asset/emoticons/taurus.gif\" alt=\"taurus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3396
    :sswitch_2c
    const-string v4, "<img src=\"file:///android_asset/emoticons/sprinkle.gif\" alt=\"sprinkle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3399
    :sswitch_2d
    const-string v4, "<img src=\"file:///android_asset/emoticons/annoy.gif\" alt=\"annoy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3402
    :sswitch_2e
    const-string v4, "<img src=\"file:///android_asset/emoticons/five.gif\" alt=\"five\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3405
    :sswitch_2f
    const-string v4, "<img src=\"file:///android_asset/emoticons/karaoke.gif\" alt=\"karaoke\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3408
    :sswitch_30
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon1.gif\" alt=\"moon1\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3411
    :sswitch_31
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign04.gif\" alt=\"sign04\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3414
    :sswitch_32
    const-string v4, "<img src=\"file:///android_asset/emoticons/happy02.gif\" alt=\"happy02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3417
    :sswitch_33
    const-string v4, "<img src=\"file:///android_asset/emoticons/hotel.gif\" alt=\"hotel\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3420
    :sswitch_34
    const-string v4, "<img src=\"file:///android_asset/emoticons/ring.gif\" alt=\"ring\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3423
    :sswitch_35
    const-string v4, "<img src=\"file:///android_asset/emoticons/mist.gif\" alt=\"mist\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3426
    :sswitch_36
    const-string v4, "<img src=\"file:///android_asset/emoticons/full.gif\" alt=\"full\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3429
    :sswitch_37
    const-string v4, "<img src=\"file:///android_asset/emoticons/book.gif\" alt=\"book\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3432
    :sswitch_38
    const-string v4, "<img src=\"file:///android_asset/emoticons/sweat02.gif\" alt=\"sweat02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3435
    :sswitch_39
    const-string v4, "<img src=\"file:///android_asset/emoticons/pc.gif\" alt=\"pc\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3438
    :sswitch_3a
    const-string v4, "<img src=\"file:///android_asset/emoticons/bar.gif\" alt=\"bar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3441
    :sswitch_3b
    const-string v4, "<img src=\"file:///android_asset/emoticons/bearing.gif\" alt=\"bearing\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3444
    :sswitch_3c
    const-string v4, "<img src=\"file:///android_asset/emoticons/subway.gif\" alt=\"subway\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3447
    :sswitch_3d
    const-string v4, "<img src=\"file:///android_asset/emoticons/gawk.gif\" alt=\"gawk\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3450
    :sswitch_3e
    const-string v4, "<img src=\"file:///android_asset/emoticons/apple.gif\" alt=\"apple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3453
    :sswitch_3f
    const-string v4, "<img src=\"file:///android_asset/emoticons/rvcar.gif\" alt=\"rvcar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3456
    :sswitch_40
    const-string v4, "<img src=\"file:///android_asset/emoticons/building.gif\" alt=\"building\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3459
    :sswitch_41
    const-string v4, "<img src=\"file:///android_asset/emoticons/danger.gif\" alt=\"danger\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3462
    :sswitch_42
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign01.gif\" alt=\"sign01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3465
    :sswitch_43
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart01.gif\" alt=\"heart01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3468
    :sswitch_44
    const-string v4, "<img src=\"file:///android_asset/emoticons/bus.gif\" alt=\"bus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3471
    :sswitch_45
    const-string v4, "<img src=\"file:///android_asset/emoticons/crying.gif\" alt=\"crying\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3474
    :sswitch_46
    const-string v4, "<img src=\"file:///android_asset/emoticons/sports.gif\" alt=\"sports\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3477
    :sswitch_47
    const-string v4, "<img src=\"file:///android_asset/emoticons/on.gif\" alt=\"on\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3480
    :sswitch_48
    const-string v4, "<img src=\"file:///android_asset/emoticons/leftright.gif\" alt=\"leftright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3483
    :sswitch_49
    const-string v4, "<img src=\"file:///android_asset/emoticons/clock.gif\" alt=\"clock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3486
    :sswitch_4a
    const-string v4, "<img src=\"file:///android_asset/emoticons/happy01.gif\" alt=\"happy01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3489
    :sswitch_4b
    const-string v4, "<img src=\"file:///android_asset/emoticons/sleepy.gif\" alt=\"sleepy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3492
    :sswitch_4c
    const-string v4, "<img src=\"file:///android_asset/emoticons/sun.gif\" alt=\"sun\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3495
    :sswitch_4d
    const-string v4, "<img src=\"file:///android_asset/emoticons/event.gif\" alt=\"event\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3498
    :sswitch_4e
    const-string v4, "<img src=\"file:///android_asset/emoticons/memo.gif\" alt=\"memo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3501
    :sswitch_4f
    const-string v4, "<img src=\"file:///android_asset/emoticons/game.gif\" alt=\"game\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3504
    :sswitch_50
    const-string v4, "<img src=\"file:///android_asset/emoticons/wrench.gif\" alt=\"wrench\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3507
    :sswitch_51
    const-string v4, "<img src=\"file:///android_asset/emoticons/clover.gif\" alt=\"clover\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3510
    :sswitch_52
    const-string v4, "<img src=\"file:///android_asset/emoticons/rock.gif\" alt=\"rock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3513
    :sswitch_53
    const-string v4, "<img src=\"file:///android_asset/emoticons/note.gif\" alt=\"note\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3516
    :sswitch_54
    const-string v4, "<img src=\"file:///android_asset/emoticons/music.gif\" alt=\"music\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3519
    :sswitch_55
    const-string v4, "<img src=\"file:///android_asset/emoticons/tulip.gif\" alt=\"tulip\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3522
    :sswitch_56
    const-string v4, "<img src=\"file:///android_asset/emoticons/soccer.gif\" alt=\"soccer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3525
    :sswitch_57
    const-string v4, "<img src=\"file:///android_asset/emoticons/newmoon.gif\" alt=\"newmoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3528
    :sswitch_58
    const-string v4, "<img src=\"file:///android_asset/emoticons/school.gif\" alt=\"school\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3531
    :sswitch_59
    const-string v4, "<img src=\"file:///android_asset/emoticons/penguin.gif\" alt=\"penguin\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3534
    :sswitch_5a
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardright.gif\" alt=\"downwardright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3537
    :sswitch_5b
    const-string v4, "<img src=\"file:///android_asset/emoticons/phoneto.gif\" alt=\"phoneto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3540
    :sswitch_5c
    const-string v4, "<img src=\"file:///android_asset/emoticons/bleah.gif\" alt=\"bleah\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3543
    :sswitch_5d
    const-string v4, "<img src=\"file:///android_asset/emoticons/airplane.gif\" alt=\"airplane\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3546
    :sswitch_5e
    const-string v4, "<img src=\"file:///android_asset/emoticons/noodle.gif\" alt=\"noodle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3549
    :sswitch_5f
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign03.gif\" alt=\"sign03\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3552
    :sswitch_60
    const-string v4, "<img src=\"file:///android_asset/emoticons/spade.gif\" alt=\"spade\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3555
    :sswitch_61
    const-string v4, "<img src=\"file:///android_asset/emoticons/foot.gif\" alt=\"foot\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3558
    :sswitch_62
    const-string v4, "<img src=\"file:///android_asset/emoticons/snowboard.gif\" alt=\"snowboard\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3561
    :sswitch_63
    const-string v4, "<img src=\"file:///android_asset/emoticons/ribbon.gif\" alt=\"ribbon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3564
    :sswitch_64
    const-string v4, "<img src=\"file:///android_asset/emoticons/enter.gif\" alt=\"enter\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3567
    :sswitch_65
    const-string v4, "<img src=\"file:///android_asset/emoticons/nine.gif\" alt=\"nine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3570
    :sswitch_66
    const-string v4, "<img src=\"file:///android_asset/emoticons/coldsweats01.gif\" alt=\"coldsweats01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3573
    :sswitch_67
    const-string v4, "<img src=\"file:///android_asset/emoticons/spa.gif\" alt=\"spa\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3576
    :sswitch_68
    const-string v4, "<img src=\"file:///android_asset/emoticons/rouge.gif\" alt=\"rouge\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3579
    :sswitch_69
    const-string v4, "<img src=\"file:///android_asset/emoticons/wave.gif\" alt=\"wave\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3582
    :sswitch_6a
    const-string v4, "<img src=\"file:///android_asset/emoticons/birthday.gif\" alt=\"birthday\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3585
    :sswitch_6b
    const-string v4, "<img src=\"file:///android_asset/emoticons/confident.gif\" alt=\"confident\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3588
    :sswitch_6c
    const-string v4, "<img src=\"file:///android_asset/emoticons/notes.gif\" alt=\"notes\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3591
    :sswitch_6d
    const-string v4, "<img src=\"file:///android_asset/emoticons/pout.gif\" alt=\"pout\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3594
    :sswitch_6e
    const-string v4, "<img src=\"file:///android_asset/emoticons/xmas.gif\" alt=\"xmas\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3597
    :sswitch_6f
    const-string v4, "<img src=\"file:///android_asset/emoticons/flair.gif\" alt=\"flair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3600
    :sswitch_70
    const-string v4, "<img src=\"file:///android_asset/emoticons/bicycle.gif\" alt=\"bicycle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3603
    :sswitch_71
    const-string v4, "<img src=\"file:///android_asset/emoticons/search.gif\" alt=\"search\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3606
    :sswitch_72
    const-string v4, "<img src=\"file:///android_asset/emoticons/shock.gif\" alt=\"shock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3609
    :sswitch_73
    const-string v4, "<img src=\"file:///android_asset/emoticons/nosmoking.gif\" alt=\"nosmoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3612
    :sswitch_74
    const-string v4, "<img src=\"file:///android_asset/emoticons/signaler.gif\" alt=\"signaler\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3615
    :sswitch_75
    const-string v4, "<img src=\"file:///android_asset/emoticons/24hours.gif\" alt=\"24hours\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3618
    :sswitch_76
    const-string v4, "<img src=\"file:///android_asset/emoticons/wobbly.gif\" alt=\"wobbly\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3621
    :sswitch_77
    const-string v4, "<img src=\"file:///android_asset/emoticons/snow.gif\" alt=\"snow\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3624
    :sswitch_78
    const-string v4, "<img src=\"file:///android_asset/emoticons/pen.gif\" alt=\"pen\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3627
    :sswitch_79
    const-string v4, "<img src=\"file:///android_asset/emoticons/appli02.gif\" alt=\"appli02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3630
    :sswitch_7a
    const-string v4, "<img src=\"file:///android_asset/emoticons/tm.gif\" alt=\"tm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3633
    :sswitch_7b
    const-string v4, "<img src=\"file:///android_asset/emoticons/pig.gif\" alt=\"pig\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3636
    :sswitch_7c
    const-string v4, "<img src=\"file:///android_asset/emoticons/gemini.gif\" alt=\"gemini\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3639
    :sswitch_7d
    const-string v4, "<img src=\"file:///android_asset/emoticons/flag.gif\" alt=\"flag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3642
    :sswitch_7e
    const-string v4, "<img src=\"file:///android_asset/emoticons/dog.gif\" alt=\"dog\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3645
    :sswitch_7f
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart04.gif\" alt=\"heart04\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3648
    :sswitch_80
    const-string v4, "<img src=\"file:///android_asset/emoticons/typhoon.gif\" alt=\"typhoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3651
    :sswitch_81
    const-string v4, "<img src=\"file:///android_asset/emoticons/train.gif\" alt=\"train\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3654
    :sswitch_82
    const-string v4, "<img src=\"file:///android_asset/emoticons/bud.gif\" alt=\"bud\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3657
    :sswitch_83
    const-string v4, "<img src=\"file:///android_asset/emoticons/baseball.gif\" alt=\"baseball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3660
    :sswitch_84
    const-string v4, "<img src=\"file:///android_asset/emoticons/chair.gif\" alt=\"chair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3663
    :sswitch_85
    const-string v4, "<img src=\"file:///android_asset/emoticons/leo.gif\" alt=\"leo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3666
    :sswitch_86
    const-string v4, "<img src=\"file:///android_asset/emoticons/six.gif\" alt=\"six\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3669
    :sswitch_87
    const-string v4, "<img src=\"file:///android_asset/emoticons/three.gif\" alt=\"three\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3672
    :sswitch_88
    const-string v4, "<img src=\"file:///android_asset/emoticons/freedial.gif\" alt=\"freedial\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3675
    :sswitch_89
    const-string v4, "<img src=\"file:///android_asset/emoticons/banana.gif\" alt=\"banana\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3678
    :sswitch_8a
    const-string v4, "<img src=\"file:///android_asset/emoticons/clear.gif\" alt=\"clear\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3681
    :sswitch_8b
    const-string v4, "<img src=\"file:///android_asset/emoticons/slate.gif\" alt=\"slate\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3684
    :sswitch_8c
    const-string v4, "<img src=\"file:///android_asset/emoticons/hospital.gif\" alt=\"hospital\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3687
    :sswitch_8d
    const-string v4, "<img src=\"file:///android_asset/emoticons/house.gif\" alt=\"house\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3690
    :sswitch_8e
    const-string v4, "<img src=\"file:///android_asset/emoticons/paper.gif\" alt=\"paper\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3693
    :sswitch_8f
    const-string v4, "<img src=\"file:///android_asset/emoticons/smoking.gif\" alt=\"smoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3696
    :sswitch_90
    const-string v4, "<img src=\"file:///android_asset/emoticons/bullettrain.gif\" alt=\"bullettrain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3699
    :sswitch_91
    const-string v4, "<img src=\"file:///android_asset/emoticons/shadow.gif\" alt=\"shadow\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3702
    :sswitch_92
    const-string v4, "<img src=\"file:///android_asset/emoticons/cafe.gif\" alt=\"cafe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3705
    :sswitch_93
    const-string v4, "<img src=\"file:///android_asset/emoticons/golf.gif\" alt=\"golf\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3708
    :sswitch_94
    const-string v4, "<img src=\"file:///android_asset/emoticons/dash.gif\" alt=\"dash\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3711
    :sswitch_95
    const-string v4, "<img src=\"file:///android_asset/emoticons/cherryblossom.gif\" alt=\"cherryblossom\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3714
    :sswitch_96
    const-string v4, "<img src=\"file:///android_asset/emoticons/angry.gif\" alt=\"angry\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3717
    :sswitch_97
    const-string v4, "<img src=\"file:///android_asset/emoticons/r-mark.gif\" alt=\"r-mark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3720
    :sswitch_98
    const-string v4, "<img src=\"file:///android_asset/emoticons/cat.gif\" alt=\"cat\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3723
    :sswitch_99
    const-string v4, "<img src=\"file:///android_asset/emoticons/info01.gif\" alt=\"info01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3726
    :sswitch_9a
    const-string v4, "<img src=\"file:///android_asset/emoticons/telephone.gif\" alt=\"telephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3729
    :sswitch_9b
    const-string v4, "<img src=\"file:///android_asset/emoticons/cd.gif\" alt=\"cd\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3732
    :sswitch_9c
    const-string v4, "<img src=\"file:///android_asset/emoticons/t-shirt.gif\" alt=\"t-shirt\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3735
    :sswitch_9d
    const-string v4, "<img src=\"file:///android_asset/emoticons/run.gif\" alt=\"run\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3738
    :sswitch_9e
    const-string v4, "<img src=\"file:///android_asset/emoticons/carouselpony.gif\" alt=\"carouselpony\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3741
    :sswitch_9f
    const-string v4, "<img src=\"file:///android_asset/emoticons/aries.gif\" alt=\"aries\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3744
    :sswitch_a0
    const-string v4, "<img src=\"file:///android_asset/emoticons/club.gif\" alt=\"club\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3747
    :sswitch_a1
    const-string v4, "<img src=\"file:///android_asset/emoticons/sagittarius.gif\" alt=\"sagittarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3750
    :sswitch_a2
    const-string v4, "<img src=\"file:///android_asset/emoticons/up.gif\" alt=\"up\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3753
    :sswitch_a3
    const-string v4, "<img src=\"file:///android_asset/emoticons/think.gif\" alt=\"think\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3756
    :sswitch_a4
    const-string v4, "<img src=\"file:///android_asset/emoticons/one.gif\" alt=\"one\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3759
    :sswitch_a5
    const-string v4, "<img src=\"file:///android_asset/emoticons/id.gif\" alt=\"id\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3762
    :sswitch_a6
    const-string v4, "<img src=\"file:///android_asset/emoticons/hairsalon.gif\" alt=\"hairsalon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3765
    :sswitch_a7
    const-string v4, "<img src=\"file:///android_asset/emoticons/soon.gif\" alt=\"soon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3768
    :sswitch_a8
    const-string v4, "<img src=\"file:///android_asset/emoticons/loveletter.gif\" alt=\"loveletter\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3771
    :sswitch_a9
    const-string v4, "<img src=\"file:///android_asset/emoticons/fastfood.gif\" alt=\"fastfood\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3774
    :sswitch_aa
    const-string v4, "<img src=\"file:///android_asset/emoticons/pencil.gif\" alt=\"pencil\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3777
    :sswitch_ab
    const-string v4, "<img src=\"file:///android_asset/emoticons/upwardleft.gif\" alt=\"upwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3780
    :sswitch_ac
    const-string v4, "<img src=\"file:///android_asset/emoticons/clip.gif\" alt=\"clip\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3783
    :sswitch_ad
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart02.gif\" alt=\"heart02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3786
    :sswitch_ae
    const-string v4, "<img src=\"file:///android_asset/emoticons/eyeglass.gif\" alt=\"eyeglass\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3789
    :sswitch_af
    const-string v4, "<img src=\"file:///android_asset/emoticons/car.gif\" alt=\"car\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3792
    :sswitch_b0
    const-string v4, "<img src=\"file:///android_asset/emoticons/cherry.gif\" alt=\"cherry\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3795
    :sswitch_b1
    const-string v4, "<img src=\"file:///android_asset/emoticons/sandclock.gif\" alt=\"sandclock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3798
    :sswitch_b2
    const-string v4, "<img src=\"file:///android_asset/emoticons/recycle.gif\" alt=\"recycle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3801
    :sswitch_b3
    const-string v4, "<img src=\"file:///android_asset/emoticons/delicious.gif\" alt=\"delicious\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3804
    :sswitch_b4
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon2.gif\" alt=\"moon2\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3807
    :sswitch_b5
    const-string v4, "<img src=\"file:///android_asset/emoticons/tv.gif\" alt=\"tv\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3810
    :sswitch_b6
    const-string v4, "<img src=\"file:///android_asset/emoticons/sweat01.gif\" alt=\"sweat01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3813
    :sswitch_b7
    const-string v4, "<img src=\"file:///android_asset/emoticons/ban.gif\" alt=\"ban\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3816
    :sswitch_b8
    const-string v4, "<img src=\"file:///android_asset/emoticons/beer.gif\" alt=\"beer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3819
    :sswitch_b9
    const-string v4, "<img src=\"file:///android_asset/emoticons/rain.gif\" alt=\"rain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3822
    :sswitch_ba
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon3.gif\" alt=\"moon3\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3825
    :sswitch_bb
    const-string v4, "<img src=\"file:///android_asset/emoticons/ski.gif\" alt=\"ski\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3828
    :sswitch_bc
    const-string v4, "<img src=\"file:///android_asset/emoticons/appli01.gif\" alt=\"appli01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3831
    :sswitch_bd
    const-string v4, "<img src=\"file:///android_asset/emoticons/four.gif\" alt=\"four\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3834
    :sswitch_be
    const-string v4, "<img src=\"file:///android_asset/emoticons/shoe.gif\" alt=\"shoe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3837
    :sswitch_bf
    const-string v4, "<img src=\"file:///android_asset/emoticons/cloud.gif\" alt=\"cloud\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3840
    :sswitch_c0
    const-string v4, "<img src=\"file:///android_asset/emoticons/ng.gif\" alt=\"ng\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3843
    :sswitch_c1
    const-string v4, "<img src=\"file:///android_asset/emoticons/yacht.gif\" alt=\"yacht\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3846
    :sswitch_c2
    const-string v4, "<img src=\"file:///android_asset/emoticons/pass.gif\" alt=\"pass\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3849
    :sswitch_c3
    const-string v4, "<img src=\"file:///android_asset/emoticons/drama.gif\" alt=\"drama\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3852
    :sswitch_c4
    const-string v4, "<img src=\"file:///android_asset/emoticons/good.gif\" alt=\"good\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3855
    :sswitch_c5
    const-string v4, "<img src=\"file:///android_asset/emoticons/zero.gif\" alt=\"zero\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3858
    :sswitch_c6
    const-string v4, "<img src=\"file:///android_asset/emoticons/catface.gif\" alt=\"catface\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3861
    :sswitch_c7
    const-string v4, "<img src=\"file:///android_asset/emoticons/d-point.gif\" alt=\"d-point\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3864
    :sswitch_c8
    const-string v4, "<img src=\"file:///android_asset/emoticons/despair.gif\" alt=\"despair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3867
    :sswitch_c9
    const-string v4, "<img src=\"file:///android_asset/emoticons/down.gif\" alt=\"down\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3870
    :sswitch_ca
    const-string v4, "<img src=\"file:///android_asset/emoticons/tennis.gif\" alt=\"tennis\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3873
    :sswitch_cb
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign02.gif\" alt=\"sign02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3876
    :sswitch_cc
    const-string v4, "<img src=\"file:///android_asset/emoticons/denim.gif\" alt=\"denim\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3879
    :sswitch_cd
    const-string v4, "<img src=\"file:///android_asset/emoticons/impact.gif\" alt=\"impact\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3882
    :sswitch_ce
    const-string v4, "<img src=\"file:///android_asset/emoticons/thunder.gif\" alt=\"thunder\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3885
    :sswitch_cf
    const-string v4, "<img src=\"file:///android_asset/emoticons/parking.gif\" alt=\"parking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3888
    :sswitch_d0
    const-string v4, "<img src=\"file:///android_asset/emoticons/sad.gif\" alt=\"sad\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3891
    :sswitch_d1
    const-string v4, "<img src=\"file:///android_asset/emoticons/japanesetea.gif\" alt=\"japanesetea\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3894
    :sswitch_d2
    const-string v4, "<img src=\"file:///android_asset/emoticons/punch.gif\" alt=\"punch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3897
    :sswitch_d3
    const-string v4, "<img src=\"file:///android_asset/emoticons/updown.gif\" alt=\"updown\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3900
    :sswitch_d4
    const-string v4, "<img src=\"file:///android_asset/emoticons/restaurant.gif\" alt=\"restaurant\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3903
    :sswitch_d5
    const-string v4, "<img src=\"file:///android_asset/emoticons/toilet.gif\" alt=\"toilet\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3906
    :sswitch_d6
    const-string v4, "<img src=\"file:///android_asset/emoticons/empty.gif\" alt=\"empty\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3909
    :sswitch_d7
    const-string v4, "<img src=\"file:///android_asset/emoticons/coldsweats02.gif\" alt=\"coldsweats02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3912
    :sswitch_d8
    const-string v4, "<img src=\"file:///android_asset/emoticons/end.gif\" alt=\"end\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3915
    :sswitch_d9
    const-string v4, "<img src=\"file:///android_asset/emoticons/art.gif\" alt=\"art\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3918
    :sswitch_da
    const-string v4, "<img src=\"file:///android_asset/emoticons/weep.gif\" alt=\"weep\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3921
    :sswitch_db
    const-string v4, "<img src=\"file:///android_asset/emoticons/dollar.gif\" alt=\"dollar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3924
    :sswitch_dc
    const-string v4, "<img src=\"file:///android_asset/emoticons/mailto.gif\" alt=\"mailto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3927
    :sswitch_dd
    const-string v4, "<img src=\"file:///android_asset/emoticons/cute.gif\" alt=\"cute\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3930
    :sswitch_de
    const-string v4, "<img src=\"file:///android_asset/emoticons/new.gif\" alt=\"new\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3933
    :sswitch_df
    const-string v4, "<img src=\"file:///android_asset/emoticons/pisces.gif\" alt=\"pisces\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3936
    :sswitch_e0
    const-string v4, "<img src=\"file:///android_asset/emoticons/wine.gif\" alt=\"wine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3939
    :sswitch_e1
    const-string v4, "<img src=\"file:///android_asset/emoticons/cancer.gif\" alt=\"cancer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3942
    :sswitch_e2
    const-string v4, "<img src=\"file:///android_asset/emoticons/aquarius.gif\" alt=\"aquarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3945
    :sswitch_e3
    const-string v4, "<img src=\"file:///android_asset/emoticons/fuji.gif\" alt=\"fuji\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3948
    :sswitch_e4
    const-string v4, "<img src=\"file:///android_asset/emoticons/camera.gif\" alt=\"camera\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3951
    :sswitch_e5
    const-string v4, "<img src=\"file:///android_asset/emoticons/watch.gif\" alt=\"watch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3954
    :sswitch_e6
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart03.gif\" alt=\"heart03\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3957
    :sswitch_e7
    const-string v4, "<img src=\"file:///android_asset/emoticons/crown.gif\" alt=\"crown\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3960
    :sswitch_e8
    const-string v4, "<img src=\"file:///android_asset/emoticons/night.gif\" alt=\"night\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3963
    :sswitch_e9
    const-string v4, "<img src=\"file:///android_asset/emoticons/gasstation.gif\" alt=\"gasstation\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3966
    :sswitch_ea
    const-string v4, "<img src=\"file:///android_asset/emoticons/ear.gif\" alt=\"ear\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3969
    :sswitch_eb
    const-string v4, "<img src=\"file:///android_asset/emoticons/present.gif\" alt=\"present\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3972
    :sswitch_ec
    const-string v4, "<img src=\"file:///android_asset/emoticons/eight.gif\" alt=\"eight\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3975
    :sswitch_ed
    const-string v4, "<img src=\"file:///android_asset/emoticons/moneybag.gif\" alt=\"moneybag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3978
    :sswitch_ee
    const-string v4, "<img src=\"file:///android_asset/emoticons/riceball.gif\" alt=\"riceball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3981
    :sswitch_ef
    const-string v4, "<img src=\"file:///android_asset/emoticons/fullmoon.gif\" alt=\"fullmoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3984
    :sswitch_f0
    const-string v4, "<img src=\"file:///android_asset/emoticons/bread.gif\" alt=\"bread\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3987
    :sswitch_f1
    const-string v4, "<img src=\"file:///android_asset/emoticons/postoffice.gif\" alt=\"postoffice\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3990
    :sswitch_f2
    const-string v4, "<img src=\"file:///android_asset/emoticons/movie.gif\" alt=\"movie\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3993
    :sswitch_f3
    const-string v4, "<img src=\"file:///android_asset/emoticons/atm.gif\" alt=\"atm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3996
    :sswitch_f4
    const-string v4, "<img src=\"file:///android_asset/emoticons/mobilephone.gif\" alt=\"mobilephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3999
    :sswitch_f5
    const-string v4, "<img src=\"file:///android_asset/emoticons/shine.gif\" alt=\"shine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4002
    :sswitch_f6
    const-string v4, "<img src=\"file:///android_asset/emoticons/bell.gif\" alt=\"bell\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4005
    :sswitch_f7
    const-string v4, "<img src=\"file:///android_asset/emoticons/bottle.gif\" alt=\"bottle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4008
    :sswitch_f8
    const-string v4, "<img src=\"file:///android_asset/emoticons/horse.gif\" alt=\"horse\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4011
    :sswitch_f9
    const-string v4, "<img src=\"file:///android_asset/emoticons/fish.gif\" alt=\"fish\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4014
    :sswitch_fa
    const-string v4, "<img src=\"file:///android_asset/emoticons/motorsports.gif\" alt=\"motorsports\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4017
    :sswitch_fb
    const-string v4, "<img src=\"file:///android_asset/emoticons/mail.gif\" alt=\"mail\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4024
    :sswitch_fc
    const-string v4, "<img src=\"file:///android_asset/emoticons/eight.gif\" alt=\"eight\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4027
    :sswitch_fd
    const-string v4, "<img src=\"file:///android_asset/emoticons/coldsweats01.gif\" alt=\"coldsweats01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4030
    :sswitch_fe
    const-string v4, "<img src=\"file:///android_asset/emoticons/four.gif\" alt=\"four\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4033
    :sswitch_ff
    const-string v4, "<img src=\"file:///android_asset/emoticons/ticket.gif\" alt=\"ticket\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4036
    :sswitch_100
    const-string v4, "<img src=\"file:///android_asset/emoticons/book.gif\" alt=\"book\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4039
    :sswitch_101
    const-string v4, "<img src=\"file:///android_asset/emoticons/cancer.gif\" alt=\"cancer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4042
    :sswitch_102
    const-string v4, "<img src=\"file:///android_asset/emoticons/rouge.gif\" alt=\"rouge\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4045
    :sswitch_103
    const-string v4, "<img src=\"file:///android_asset/emoticons/danger.gif\" alt=\"danger\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4048
    :sswitch_104
    const-string v4, "<img src=\"file:///android_asset/emoticons/scissors.gif\" alt=\"scissors\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4051
    :sswitch_105
    const-string v4, "<img src=\"file:///android_asset/emoticons/riceball.gif\" alt=\"riceball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4054
    :sswitch_106
    const-string v4, "<img src=\"file:///android_asset/emoticons/rain.gif\" alt=\"rain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4057
    :sswitch_107
    const-string v4, "<img src=\"file:///android_asset/emoticons/note.gif\" alt=\"note\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4060
    :sswitch_108
    const-string v4, "<img src=\"file:///android_asset/emoticons/sprinkle.gif\" alt=\"sprinkle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4063
    :sswitch_109
    const-string v4, "<img src=\"file:///android_asset/emoticons/wheelchair.gif\" alt=\"wheelchair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4066
    :sswitch_10a
    const-string v4, "<img src=\"file:///android_asset/emoticons/basketball.gif\" alt=\"basketball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4069
    :sswitch_10b
    const-string v4, "<img src=\"file:///android_asset/emoticons/movie.gif\" alt=\"movie\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4072
    :sswitch_10c
    const-string v4, "<img src=\"file:///android_asset/emoticons/smoking.gif\" alt=\"smoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4075
    :sswitch_10d
    const-string v4, "<img src=\"file:///android_asset/emoticons/kissmark.gif\" alt=\"kissmark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4078
    :sswitch_10e
    const-string v4, "<img src=\"file:///android_asset/emoticons/one.gif\" alt=\"one\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4081
    :sswitch_10f
    const-string v4, "<img src=\"file:///android_asset/emoticons/upwardleft.gif\" alt=\"upwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4084
    :sswitch_110
    const-string v4, "<img src=\"file:///android_asset/emoticons/sad.gif\" alt=\"sad\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4087
    :sswitch_111
    const-string v4, "<img src=\"file:///android_asset/emoticons/fuji.gif\" alt=\"fuji\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4090
    :sswitch_112
    const-string v4, "<img src=\"file:///android_asset/emoticons/gawk.gif\" alt=\"gawk\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4093
    :sswitch_113
    const-string v4, "<img src=\"file:///android_asset/emoticons/libra.gif\" alt=\"libra\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4096
    :sswitch_114
    const-string v4, "<img src=\"file:///android_asset/emoticons/pisces.gif\" alt=\"pisces\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4099
    :sswitch_115
    const-string v4, "<img src=\"file:///android_asset/emoticons/typhoon.gif\" alt=\"typhoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4102
    :sswitch_116
    const-string v4, "<img src=\"file:///android_asset/emoticons/dog.gif\" alt=\"dog\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4105
    :sswitch_117
    const-string v4, "<img src=\"file:///android_asset/emoticons/virgo.gif\" alt=\"virgo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4108
    :sswitch_118
    const-string v4, "<img src=\"file:///android_asset/emoticons/chick.gif\" alt=\"chick\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4111
    :sswitch_119
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart03.gif\" alt=\"heart03\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4114
    :sswitch_11a
    const-string v4, "<img src=\"file:///android_asset/emoticons/bell.gif\" alt=\"bell\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4117
    :sswitch_11b
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardleft.gif\" alt=\"downwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4120
    :sswitch_11c
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart.gif\" alt=\"heart\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4123
    :sswitch_11d
    const-string v4, "<img src=\"file:///android_asset/emoticons/freedial.gif\" alt=\"freedial\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4126
    :sswitch_11e
    const-string v4, "<img src=\"file:///android_asset/emoticons/chair.gif\" alt=\"chair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4129
    :sswitch_11f
    const-string v4, "<img src=\"file:///android_asset/emoticons/coldsweats02.gif\" alt=\"coldsweats02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4132
    :sswitch_120
    const-string v4, "<img src=\"file:///android_asset/emoticons/dash.gif\" alt=\"dash\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4135
    :sswitch_121
    const-string v4, "<img src=\"file:///android_asset/emoticons/smile.gif\" alt=\"smile\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4138
    :sswitch_122
    const-string v4, "<img src=\"file:///android_asset/emoticons/tulip.gif\" alt=\"tulip\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4141
    :sswitch_123
    const-string v4, "<img src=\"file:///android_asset/emoticons/eye.gif\" alt=\"eye\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4144
    :sswitch_124
    const-string v4, "<img src=\"file:///android_asset/emoticons/thunder.gif\" alt=\"thunder\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4147
    :sswitch_125
    const-string v4, "<img src=\"file:///android_asset/emoticons/ski.gif\" alt=\"ski\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4150
    :sswitch_126
    const-string v4, "<img src=\"file:///android_asset/emoticons/bicycle.gif\" alt=\"bicycle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4153
    :sswitch_127
    const-string v4, "<img src=\"file:///android_asset/emoticons/angry.gif\" alt=\"angry\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4156
    :sswitch_128
    const-string v4, "<img src=\"file:///android_asset/emoticons/airplane.gif\" alt=\"airplane\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4159
    :sswitch_129
    const-string v4, "<img src=\"file:///android_asset/emoticons/snow.gif\" alt=\"snow\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4162
    :sswitch_12a
    const-string v4, "<img src=\"file:///android_asset/emoticons/bullettrain.gif\" alt=\"bullettrain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4165
    :sswitch_12b
    const-string v4, "<img src=\"file:///android_asset/emoticons/spade.gif\" alt=\"spade\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4168
    :sswitch_12c
    const-string v4, "<img src=\"file:///android_asset/emoticons/sagittarius.gif\" alt=\"sagittarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4171
    :sswitch_12d
    const-string v4, "<img src=\"file:///android_asset/emoticons/school.gif\" alt=\"school\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4174
    :sswitch_12e
    const-string v4, "<img src=\"file:///android_asset/emoticons/flair.gif\" alt=\"flair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4177
    :sswitch_12f
    const-string v4, "<img src=\"file:///android_asset/emoticons/art.gif\" alt=\"art\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4180
    :sswitch_130
    const-string v4, "<img src=\"file:///android_asset/emoticons/japanesetea.gif\" alt=\"japanesetea\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4183
    :sswitch_131
    const-string v4, "<img src=\"file:///android_asset/emoticons/birthday.gif\" alt=\"birthday\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4186
    :sswitch_132
    const-string v4, "<img src=\"file:///android_asset/emoticons/empty.gif\" alt=\"empty\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4189
    :sswitch_133
    const-string v4, "<img src=\"file:///android_asset/emoticons/bomb.gif\" alt=\"bomb\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4192
    :sswitch_134
    const-string v4, "<img src=\"file:///android_asset/emoticons/paper.gif\" alt=\"paper\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4195
    :sswitch_135
    const-string v4, "<img src=\"file:///android_asset/emoticons/toilet.gif\" alt=\"toilet\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4198
    :sswitch_136
    const-string v4, "<img src=\"file:///android_asset/emoticons/horse.gif\" alt=\"horse\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4201
    :sswitch_137
    const-string v4, "<img src=\"file:///android_asset/emoticons/gasstation.gif\" alt=\"gasstation\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4204
    :sswitch_138
    const-string v4, "<img src=\"file:///android_asset/emoticons/key.gif\" alt=\"key\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4207
    :sswitch_139
    const-string v4, "<img src=\"file:///android_asset/emoticons/punch.gif\" alt=\"punch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4210
    :sswitch_13a
    const-string v4, "<img src=\"file:///android_asset/emoticons/ok.gif\" alt=\"ok\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4213
    :sswitch_13b
    const-string v4, "<img src=\"file:///android_asset/emoticons/bleah.gif\" alt=\"bleah\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4216
    :sswitch_13c
    const-string v4, "<img src=\"file:///android_asset/emoticons/good.gif\" alt=\"good\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4219
    :sswitch_13d
    const-string v4, "<img src=\"file:///android_asset/emoticons/atm.gif\" alt=\"atm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4222
    :sswitch_13e
    const-string v4, "<img src=\"file:///android_asset/emoticons/wink.gif\" alt=\"wink\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4225
    :sswitch_13f
    const-string v4, "<img src=\"file:///android_asset/emoticons/cherryblossom.gif\" alt=\"cherryblossom\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4228
    :sswitch_140
    const-string v4, "<img src=\"file:///android_asset/emoticons/happy01.gif\" alt=\"happy01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4231
    :sswitch_141
    const-string v4, "<img src=\"file:///android_asset/emoticons/id.gif\" alt=\"id\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4234
    :sswitch_142
    const-string v4, "<img src=\"file:///android_asset/emoticons/baseball.gif\" alt=\"baseball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4237
    :sswitch_143
    const-string v4, "<img src=\"file:///android_asset/emoticons/wine.gif\" alt=\"wine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4240
    :sswitch_144
    const-string v4, "<img src=\"file:///android_asset/emoticons/run.gif\" alt=\"run\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4243
    :sswitch_145
    const-string v4, "<img src=\"file:///android_asset/emoticons/parking.gif\" alt=\"parking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4246
    :sswitch_146
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart04.gif\" alt=\"heart04\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4249
    :sswitch_147
    const-string v4, "<img src=\"file:///android_asset/emoticons/golf.gif\" alt=\"golf\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4252
    :sswitch_148
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign01.gif\" alt=\"sign01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4255
    :sswitch_149
    const-string v4, "<img src=\"file:///android_asset/emoticons/music.gif\" alt=\"music\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4258
    :sswitch_14a
    const-string v4, "<img src=\"file:///android_asset/emoticons/crying.gif\" alt=\"crying\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4261
    :sswitch_14b
    const-string v4, "<img src=\"file:///android_asset/emoticons/foot.gif\" alt=\"foot\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4264
    :sswitch_14c
    const-string v4, "<img src=\"file:///android_asset/emoticons/beer.gif\" alt=\"beer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4267
    :sswitch_14d
    const-string v4, "<img src=\"file:///android_asset/emoticons/wave.gif\" alt=\"wave\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4270
    :sswitch_14e
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart01.gif\" alt=\"heart01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4273
    :sswitch_14f
    const-string v4, "<img src=\"file:///android_asset/emoticons/shoe.gif\" alt=\"shoe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4276
    :sswitch_150
    const-string v4, "<img src=\"file:///android_asset/emoticons/rock.gif\" alt=\"rock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4279
    :sswitch_151
    const-string v4, "<img src=\"file:///android_asset/emoticons/shine.gif\" alt=\"shine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4282
    :sswitch_152
    const-string v4, "<img src=\"file:///android_asset/emoticons/penguin.gif\" alt=\"penguin\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4285
    :sswitch_153
    const-string v4, "<img src=\"file:///android_asset/emoticons/karaoke.gif\" alt=\"karaoke\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4288
    :sswitch_154
    const-string v4, "<img src=\"file:///android_asset/emoticons/soccer.gif\" alt=\"soccer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4291
    :sswitch_155
    const-string v4, "<img src=\"file:///android_asset/emoticons/bus.gif\" alt=\"bus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4294
    :sswitch_156
    const-string v4, "<img src=\"file:///android_asset/emoticons/shock.gif\" alt=\"shock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4297
    :sswitch_157
    const-string v4, "<img src=\"file:///android_asset/emoticons/sun.gif\" alt=\"sun\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4300
    :sswitch_158
    const-string v4, "<img src=\"file:///android_asset/emoticons/24hours.gif\" alt=\"24hours\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4303
    :sswitch_159
    const-string v4, "<img src=\"file:///android_asset/emoticons/clover.gif\" alt=\"clover\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4306
    :sswitch_15a
    const-string v4, "<img src=\"file:///android_asset/emoticons/ring.gif\" alt=\"ring\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4309
    :sswitch_15b
    const-string v4, "<img src=\"file:///android_asset/emoticons/r-mark.gif\" alt=\"r-mark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4312
    :sswitch_15c
    const-string v4, "<img src=\"file:///android_asset/emoticons/present.gif\" alt=\"present\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4315
    :sswitch_15d
    const-string v4, "<img src=\"file:///android_asset/emoticons/bank.gif\" alt=\"bank\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4318
    :sswitch_15e
    const-string v4, "<img src=\"file:///android_asset/emoticons/rvcar.gif\" alt=\"rvcar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4321
    :sswitch_15f
    const-string v4, "<img src=\"file:///android_asset/emoticons/boutique.gif\" alt=\"boutique\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4324
    :sswitch_160
    const-string v4, "<img src=\"file:///android_asset/emoticons/weep.gif\" alt=\"weep\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4327
    :sswitch_161
    const-string v4, "<img src=\"file:///android_asset/emoticons/gemini.gif\" alt=\"gemini\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4330
    :sswitch_162
    const-string v4, "<img src=\"file:///android_asset/emoticons/new.gif\" alt=\"new\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4333
    :sswitch_163
    const-string v4, "<img src=\"file:///android_asset/emoticons/slate.gif\" alt=\"slate\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4336
    :sswitch_164
    const-string v4, "<img src=\"file:///android_asset/emoticons/five.gif\" alt=\"five\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4339
    :sswitch_165
    const-string v4, "<img src=\"file:///android_asset/emoticons/drama.gif\" alt=\"drama\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4342
    :sswitch_166
    const-string v4, "<img src=\"file:///android_asset/emoticons/capricornus.gif\" alt=\"capricornus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4345
    :sswitch_167
    const-string v4, "<img src=\"file:///android_asset/emoticons/cloud.gif\" alt=\"cloud\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4348
    :sswitch_168
    const-string v4, "<img src=\"file:///android_asset/emoticons/leo.gif\" alt=\"leo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4351
    :sswitch_169
    const-string v4, "<img src=\"file:///android_asset/emoticons/notes.gif\" alt=\"notes\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4354
    :sswitch_16a
    const-string v4, "<img src=\"file:///android_asset/emoticons/faxto.gif\" alt=\"faxto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4357
    :sswitch_16b
    const-string v4, "<img src=\"file:///android_asset/emoticons/six.gif\" alt=\"six\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4360
    :sswitch_16c
    const-string v4, "<img src=\"file:///android_asset/emoticons/taurus.gif\" alt=\"taurus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4363
    :sswitch_16d
    const-string v4, "<img src=\"file:///android_asset/emoticons/copyright.gif\" alt=\"copyright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4366
    :sswitch_16e
    const-string v4, "<img src=\"file:///android_asset/emoticons/nine.gif\" alt=\"nine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4369
    :sswitch_16f
    const-string v4, "<img src=\"file:///android_asset/emoticons/camera.gif\" alt=\"camera\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4372
    :sswitch_170
    const-string v4, "<img src=\"file:///android_asset/emoticons/train.gif\" alt=\"train\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4375
    :sswitch_171
    const-string v4, "<img src=\"file:///android_asset/emoticons/diamond.gif\" alt=\"diamond\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4378
    :sswitch_172
    const-string v4, "<img src=\"file:///android_asset/emoticons/telephone.gif\" alt=\"telephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4381
    :sswitch_173
    const-string v4, "<img src=\"file:///android_asset/emoticons/fish.gif\" alt=\"fish\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4384
    :sswitch_174
    const-string v4, "<img src=\"file:///android_asset/emoticons/yacht.gif\" alt=\"yacht\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4387
    :sswitch_175
    const-string v4, "<img src=\"file:///android_asset/emoticons/confident.gif\" alt=\"confident\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4390
    :sswitch_176
    const-string v4, "<img src=\"file:///android_asset/emoticons/scorpius.gif\" alt=\"scorpius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4393
    :sswitch_177
    const-string v4, "<img src=\"file:///android_asset/emoticons/fastfood.gif\" alt=\"fastfood\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4396
    :sswitch_178
    const-string v4, "<img src=\"file:///android_asset/emoticons/bag.gif\" alt=\"bag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4399
    :sswitch_179
    const-string v4, "<img src=\"file:///android_asset/emoticons/apple.gif\" alt=\"apple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4402
    :sswitch_17a
    const-string v4, "<img src=\"file:///android_asset/emoticons/bread.gif\" alt=\"bread\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4405
    :sswitch_17b
    const-string v4, "<img src=\"file:///android_asset/emoticons/sleepy.gif\" alt=\"sleepy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4408
    :sswitch_17c
    const-string v4, "<img src=\"file:///android_asset/emoticons/lovely.gif\" alt=\"lovely\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4411
    :sswitch_17d
    const-string v4, "<img src=\"file:///android_asset/emoticons/noodle.gif\" alt=\"noodle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4414
    :sswitch_17e
    const-string v4, "<img src=\"file:///android_asset/emoticons/club.gif\" alt=\"club\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4417
    :sswitch_17f
    const-string v4, "<img src=\"file:///android_asset/emoticons/search.gif\" alt=\"search\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4420
    :sswitch_180
    const-string v4, "<img src=\"file:///android_asset/emoticons/crown.gif\" alt=\"crown\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4423
    :sswitch_181
    const-string v4, "<img src=\"file:///android_asset/emoticons/wobbly.gif\" alt=\"wobbly\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4426
    :sswitch_182
    const-string v4, "<img src=\"file:///android_asset/emoticons/sweat02.gif\" alt=\"sweat02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4429
    :sswitch_183
    const-string v4, "<img src=\"file:///android_asset/emoticons/cat.gif\" alt=\"cat\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4432
    :sswitch_184
    const-string v4, "<img src=\"file:///android_asset/emoticons/memo.gif\" alt=\"memo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4435
    :sswitch_185
    const-string v4, "<img src=\"file:///android_asset/emoticons/car.gif\" alt=\"car\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4438
    :sswitch_186
    const-string v4, "<img src=\"file:///android_asset/emoticons/ribbon.gif\" alt=\"ribbon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4441
    :sswitch_187
    const-string v4, "<img src=\"file:///android_asset/emoticons/secret.gif\" alt=\"secret\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4444
    :sswitch_188
    const-string v4, "<img src=\"file:///android_asset/emoticons/up.gif\" alt=\"up\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4447
    :sswitch_189
    const-string v4, "<img src=\"file:///android_asset/emoticons/nosmoking.gif\" alt=\"nosmoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4450
    :sswitch_18a
    const-string v4, "<img src=\"file:///android_asset/emoticons/t-shirt.gif\" alt=\"t-shirt\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4453
    :sswitch_18b
    const-string v4, "<img src=\"file:///android_asset/emoticons/tv.gif\" alt=\"tv\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4456
    :sswitch_18c
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardright.gif\" alt=\"downwardright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4459
    :sswitch_18d
    const-string v4, "<img src=\"file:///android_asset/emoticons/pig.gif\" alt=\"pig\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4462
    :sswitch_18e
    const-string v4, "<img src=\"file:///android_asset/emoticons/cd.gif\" alt=\"cd\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4465
    :sswitch_18f
    const-string v4, "<img src=\"file:///android_asset/emoticons/catface.gif\" alt=\"catface\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4468
    :sswitch_190
    const-string v4, "<img src=\"file:///android_asset/emoticons/pout.gif\" alt=\"pout\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4471
    :sswitch_191
    const-string v4, "<img src=\"file:///android_asset/emoticons/cafe.gif\" alt=\"cafe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4474
    :sswitch_192
    const-string v4, "<img src=\"file:///android_asset/emoticons/ear.gif\" alt=\"ear\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4477
    :sswitch_193
    const-string v4, "<img src=\"file:///android_asset/emoticons/aries.gif\" alt=\"aries\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4480
    :sswitch_194
    const-string v4, "<img src=\"file:///android_asset/emoticons/three.gif\" alt=\"three\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4483
    :sswitch_195
    const-string v4, "<img src=\"file:///android_asset/emoticons/delicious.gif\" alt=\"delicious\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4486
    :sswitch_196
    const-string v4, "<img src=\"file:///android_asset/emoticons/signaler.gif\" alt=\"signaler\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4489
    :sswitch_197
    const-string v4, "<img src=\"file:///android_asset/emoticons/hospital.gif\" alt=\"hospital\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4492
    :sswitch_198
    const-string v4, "<img src=\"file:///android_asset/emoticons/xmas.gif\" alt=\"xmas\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4495
    :sswitch_199
    const-string v4, "<img src=\"file:///android_asset/emoticons/full.gif\" alt=\"full\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4498
    :sswitch_19a
    const-string v4, "<img src=\"file:///android_asset/emoticons/spa.gif\" alt=\"spa\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4501
    :sswitch_19b
    const-string v4, "<img src=\"file:///android_asset/emoticons/motorsports.gif\" alt=\"motorsports\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4504
    :sswitch_19c
    const-string v4, "<img src=\"file:///android_asset/emoticons/subway.gif\" alt=\"subway\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4507
    :sswitch_19d
    const-string v4, "<img src=\"file:///android_asset/emoticons/think.gif\" alt=\"think\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4510
    :sswitch_19e
    const-string v4, "<img src=\"file:///android_asset/emoticons/restaurant.gif\" alt=\"restaurant\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4513
    :sswitch_19f
    const-string v4, "<img src=\"file:///android_asset/emoticons/tm.gif\" alt=\"tm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4516
    :sswitch_1a0
    const-string v4, "<img src=\"file:///android_asset/emoticons/despair.gif\" alt=\"despair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4519
    :sswitch_1a1
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon3.gif\" alt=\"moon3\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4522
    :sswitch_1a2
    const-string v4, "<img src=\"file:///android_asset/emoticons/two.gif\" alt=\"two\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4525
    :sswitch_1a3
    const-string v4, "<img src=\"file:///android_asset/emoticons/ship.gif\" alt=\"ship\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4528
    :sswitch_1a4
    const-string v4, "<img src=\"file:///android_asset/emoticons/bottle.gif\" alt=\"bottle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4531
    :sswitch_1a5
    const-string v4, "<img src=\"file:///android_asset/emoticons/maple.gif\" alt=\"maple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4534
    :sswitch_1a6
    const-string v4, "<img src=\"file:///android_asset/emoticons/loveletter.gif\" alt=\"loveletter\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4537
    :sswitch_1a7
    const-string v4, "<img src=\"file:///android_asset/emoticons/zero.gif\" alt=\"zero\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4540
    :sswitch_1a8
    const-string v4, "<img src=\"file:///android_asset/emoticons/pc.gif\" alt=\"pc\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4543
    :sswitch_1a9
    const-string v4, "<img src=\"file:///android_asset/emoticons/sharp.gif\" alt=\"sharp\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4546
    :sswitch_1aa
    const-string v4, "<img src=\"file:///android_asset/emoticons/tennis.gif\" alt=\"tennis\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4549
    :sswitch_1ab
    const-string v4, "<img src=\"file:///android_asset/emoticons/building.gif\" alt=\"building\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4552
    :sswitch_1ac
    const-string v4, "<img src=\"file:///android_asset/emoticons/clock.gif\" alt=\"clock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4555
    :sswitch_1ad
    const-string v4, "<img src=\"file:///android_asset/emoticons/annoy.gif\" alt=\"annoy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4558
    :sswitch_1ae
    const-string v4, "<img src=\"file:///android_asset/emoticons/postoffice.gif\" alt=\"postoffice\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4561
    :sswitch_1af
    const-string v4, "<img src=\"file:///android_asset/emoticons/seven.gif\" alt=\"seven\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4564
    :sswitch_1b0
    const-string v4, "<img src=\"file:///android_asset/emoticons/dollar.gif\" alt=\"dollar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4567
    :sswitch_1b1
    const-string v4, "<img src=\"file:///android_asset/emoticons/mobilephone.gif\" alt=\"mobilephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4570
    :sswitch_1b2
    const-string v4, "<img src=\"file:///android_asset/emoticons/hotel.gif\" alt=\"hotel\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4573
    :sswitch_1b3
    const-string v4, "<img src=\"file:///android_asset/emoticons/aquarius.gif\" alt=\"aquarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4576
    :sswitch_1b4
    const-string v4, "<img src=\"file:///android_asset/emoticons/house.gif\" alt=\"house\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4579
    :sswitch_1b5
    const-string v4, "<img src=\"file:///android_asset/emoticons/cake.gif\" alt=\"cake\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4582
    :sswitch_1b6
    const-string v4, "<img src=\"file:///android_asset/emoticons/phoneto.gif\" alt=\"phoneto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4585
    :sswitch_1b7
    const-string v4, "<img src=\"file:///android_asset/emoticons/night.gif\" alt=\"night\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4588
    :sswitch_1b8
    const-string v4, "<img src=\"file:///android_asset/emoticons/hairsalon.gif\" alt=\"hairsalon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4595
    :sswitch_1b9
    const-string v4, "<img src=\"file:///android_asset/emoticons/sun.gif\" alt=\"sun\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4598
    :sswitch_1ba
    const-string v4, "<img src=\"file:///android_asset/emoticons/id.gif\" alt=\"id\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4601
    :sswitch_1bb
    const-string v4, "<img src=\"file:///android_asset/emoticons/baseball.gif\" alt=\"baseball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4604
    :sswitch_1bc
    const-string v4, "<img src=\"file:///android_asset/emoticons/four.gif\" alt=\"four\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4607
    :sswitch_1bd
    const-string v4, "<img src=\"file:///android_asset/emoticons/free.gif\" alt=\"free\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4610
    :sswitch_1be
    const-string v4, "<img src=\"file:///android_asset/emoticons/wine.gif\" alt=\"wine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4613
    :sswitch_1bf
    const-string v4, "<img src=\"file:///android_asset/emoticons/bell.gif\" alt=\"bell\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4616
    :sswitch_1c0
    const-string v4, "<img src=\"file:///android_asset/emoticons/rock.gif\" alt=\"rock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4619
    :sswitch_1c1
    const-string v4, "<img src=\"file:///android_asset/emoticons/cake.gif\" alt=\"cake\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4622
    :sswitch_1c2
    const-string v4, "<img src=\"file:///android_asset/emoticons/crying.gif\" alt=\"crying\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4625
    :sswitch_1c3
    const-string v4, "<img src=\"file:///android_asset/emoticons/rain.gif\" alt=\"rain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4628
    :sswitch_1c4
    const-string v4, "<img src=\"file:///android_asset/emoticons/bearing.gif\" alt=\"bearing\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4631
    :sswitch_1c5
    const-string v4, "<img src=\"file:///android_asset/emoticons/nosmoking.gif\" alt=\"nosmoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4634
    :sswitch_1c6
    const-string v4, "<img src=\"file:///android_asset/emoticons/despair.gif\" alt=\"despair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4637
    :sswitch_1c7
    const-string v4, "<img src=\"file:///android_asset/emoticons/r-mark.gif\" alt=\"r-mark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4640
    :sswitch_1c8
    const-string v4, "<img src=\"file:///android_asset/emoticons/up.gif\" alt=\"up\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4643
    :sswitch_1c9
    const-string v4, "<img src=\"file:///android_asset/emoticons/full.gif\" alt=\"full\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4646
    :sswitch_1ca
    const-string v4, "<img src=\"file:///android_asset/emoticons/gawk.gif\" alt=\"gawk\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4649
    :sswitch_1cb
    const-string v4, "<img src=\"file:///android_asset/emoticons/recycle.gif\" alt=\"recycle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4652
    :sswitch_1cc
    const-string v4, "<img src=\"file:///android_asset/emoticons/zero.gif\" alt=\"zero\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4655
    :sswitch_1cd
    const-string v4, "<img src=\"file:///android_asset/emoticons/japanesetea.gif\" alt=\"japanesetea\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4658
    :sswitch_1ce
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign03.gif\" alt=\"sign03\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4661
    :sswitch_1cf
    const-string v4, "<img src=\"file:///android_asset/emoticons/soccer.gif\" alt=\"soccer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4664
    :sswitch_1d0
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardleft.gif\" alt=\"downwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4667
    :sswitch_1d1
    const-string v4, "<img src=\"file:///android_asset/emoticons/slate.gif\" alt=\"slate\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4670
    :sswitch_1d2
    const-string v4, "<img src=\"file:///android_asset/emoticons/toilet.gif\" alt=\"toilet\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4677
    :sswitch_1d3
    const-string v4, "<img src=\"file:///android_asset/emoticons/scorpius.gif\" alt=\"scorpius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4680
    :sswitch_1d4
    const-string v4, "<img src=\"file:///android_asset/emoticons/game.gif\" alt=\"game\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4683
    :sswitch_1d5
    const-string v4, "<img src=\"file:///android_asset/emoticons/birthday.gif\" alt=\"birthday\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4686
    :sswitch_1d6
    const-string v4, "<img src=\"file:///android_asset/emoticons/pc.gif\" alt=\"pc\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4689
    :sswitch_1d7
    const-string v4, "<img src=\"file:///android_asset/emoticons/hairsalon.gif\" alt=\"hairsalon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4692
    :sswitch_1d8
    const-string v4, "<img src=\"file:///android_asset/emoticons/sleepy.gif\" alt=\"sleepy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4695
    :sswitch_1d9
    const-string v4, "<img src=\"file:///android_asset/emoticons/atm.gif\" alt=\"atm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4698
    :sswitch_1da
    const-string v4, "<img src=\"file:///android_asset/emoticons/basketball.gif\" alt=\"basketball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4701
    :sswitch_1db
    const-string v4, "<img src=\"file:///android_asset/emoticons/sagittarius.gif\" alt=\"sagittarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4704
    :sswitch_1dc
    const-string v4, "<img src=\"file:///android_asset/emoticons/delicious.gif\" alt=\"delicious\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4707
    :sswitch_1dd
    const-string v4, "<img src=\"file:///android_asset/emoticons/newmoon.gif\" alt=\"newmoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4710
    :sswitch_1de
    const-string v4, "<img src=\"file:///android_asset/emoticons/ticket.gif\" alt=\"ticket\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4713
    :sswitch_1df
    const-string v4, "<img src=\"file:///android_asset/emoticons/wobbly.gif\" alt=\"wobbly\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4716
    :sswitch_1e0
    const-string v4, "<img src=\"file:///android_asset/emoticons/sweat02.gif\" alt=\"sweat02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4719
    :sswitch_1e1
    const-string v4, "<img src=\"file:///android_asset/emoticons/event.gif\" alt=\"event\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4722
    :sswitch_1e2
    const-string v4, "<img src=\"file:///android_asset/emoticons/house.gif\" alt=\"house\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4725
    :sswitch_1e3
    const-string v4, "<img src=\"file:///android_asset/emoticons/gemini.gif\" alt=\"gemini\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4728
    :sswitch_1e4
    const-string v4, "<img src=\"file:///android_asset/emoticons/xmas.gif\" alt=\"xmas\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4731
    :sswitch_1e5
    const-string v4, "<img src=\"file:///android_asset/emoticons/note.gif\" alt=\"note\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4734
    :sswitch_1e6
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign02.gif\" alt=\"sign02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4737
    :sswitch_1e7
    const-string v4, "<img src=\"file:///android_asset/emoticons/music.gif\" alt=\"music\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4740
    :sswitch_1e8
    const-string v4, "<img src=\"file:///android_asset/emoticons/hospital.gif\" alt=\"hospital\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4743
    :sswitch_1e9
    const-string v4, "<img src=\"file:///android_asset/emoticons/subway.gif\" alt=\"subway\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4746
    :sswitch_1ea
    const-string v4, "<img src=\"file:///android_asset/emoticons/crown.gif\" alt=\"crown\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4749
    :sswitch_1eb
    const-string v4, "<img src=\"file:///android_asset/emoticons/spa.gif\" alt=\"spa\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4752
    :sswitch_1ec
    const-string v4, "<img src=\"file:///android_asset/emoticons/ring.gif\" alt=\"ring\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4759
    :sswitch_1ed
    const-string v4, "<img src=\"file:///android_asset/emoticons/restaurant.gif\" alt=\"restaurant\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4762
    :sswitch_1ee
    const-string v4, "<img src=\"file:///android_asset/emoticons/eight.gif\" alt=\"eight\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4765
    :sswitch_1ef
    const-string v4, "<img src=\"file:///android_asset/emoticons/search.gif\" alt=\"search\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4768
    :sswitch_1f0
    const-string v4, "<img src=\"file:///android_asset/emoticons/notes.gif\" alt=\"notes\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4771
    :sswitch_1f1
    const-string v4, "<img src=\"file:///android_asset/emoticons/capricornus.gif\" alt=\"capricornus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4774
    :sswitch_1f2
    const-string v4, "<img src=\"file:///android_asset/emoticons/snail.gif\" alt=\"snail\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4777
    :sswitch_1f3
    const-string v4, "<img src=\"file:///android_asset/emoticons/bottle.gif\" alt=\"bottle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4780
    :sswitch_1f4
    const-string v4, "<img src=\"file:///android_asset/emoticons/phoneto.gif\" alt=\"phoneto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4783
    :sswitch_1f5
    const-string v4, "<img src=\"file:///android_asset/emoticons/cherry.gif\" alt=\"cherry\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4786
    :sswitch_1f6
    const-string v4, "<img src=\"file:///android_asset/emoticons/downwardright.gif\" alt=\"downwardright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4789
    :sswitch_1f7
    const-string v4, "<img src=\"file:///android_asset/emoticons/wink.gif\" alt=\"wink\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4792
    :sswitch_1f8
    const-string v4, "<img src=\"file:///android_asset/emoticons/ski.gif\" alt=\"ski\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4795
    :sswitch_1f9
    const-string v4, "<img src=\"file:///android_asset/emoticons/camera.gif\" alt=\"camera\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4798
    :sswitch_1fa
    const-string v4, "<img src=\"file:///android_asset/emoticons/t-shirt.gif\" alt=\"t-shirt\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4801
    :sswitch_1fb
    const-string v4, "<img src=\"file:///android_asset/emoticons/lovely.gif\" alt=\"lovely\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4804
    :sswitch_1fc
    const-string v4, "<img src=\"file:///android_asset/emoticons/building.gif\" alt=\"building\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4807
    :sswitch_1fd
    const-string v4, "<img src=\"file:///android_asset/emoticons/maple.gif\" alt=\"maple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4810
    :sswitch_1fe
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon2.gif\" alt=\"moon2\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4813
    :sswitch_1ff
    const-string v4, "<img src=\"file:///android_asset/emoticons/noodle.gif\" alt=\"noodle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4816
    :sswitch_200
    const-string v4, "<img src=\"file:///android_asset/emoticons/scissors.gif\" alt=\"scissors\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4819
    :sswitch_201
    const-string v4, "<img src=\"file:///android_asset/emoticons/bank.gif\" alt=\"bank\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4822
    :sswitch_202
    const-string v4, "<img src=\"file:///android_asset/emoticons/train.gif\" alt=\"train\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4825
    :sswitch_203
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart03.gif\" alt=\"heart03\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4828
    :sswitch_204
    const-string v4, "<img src=\"file:///android_asset/emoticons/danger.gif\" alt=\"danger\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4831
    :sswitch_205
    const-string v4, "<img src=\"file:///android_asset/emoticons/cafe.gif\" alt=\"cafe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4834
    :sswitch_206
    const-string v4, "<img src=\"file:///android_asset/emoticons/shoe.gif\" alt=\"shoe\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4837
    :sswitch_207
    const-string v4, "<img src=\"file:///android_asset/emoticons/wave.gif\" alt=\"wave\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4840
    :sswitch_208
    const-string v4, "<img src=\"file:///android_asset/emoticons/happy01.gif\" alt=\"happy01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4843
    :sswitch_209
    const-string v4, "<img src=\"file:///android_asset/emoticons/cherryblossom.gif\" alt=\"cherryblossom\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4846
    :sswitch_20a
    const-string v4, "<img src=\"file:///android_asset/emoticons/riceball.gif\" alt=\"riceball\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4849
    :sswitch_20b
    const-string v4, "<img src=\"file:///android_asset/emoticons/wrench.gif\" alt=\"wrench\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4852
    :sswitch_20c
    const-string v4, "<img src=\"file:///android_asset/emoticons/foot.gif\" alt=\"foot\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4855
    :sswitch_20d
    const-string v4, "<img src=\"file:///android_asset/emoticons/smoking.gif\" alt=\"smoking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4858
    :sswitch_20e
    const-string v4, "<img src=\"file:///android_asset/emoticons/penguin.gif\" alt=\"penguin\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4861
    :sswitch_20f
    const-string v4, "<img src=\"file:///android_asset/emoticons/airplane.gif\" alt=\"airplane\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4864
    :sswitch_210
    const-string v4, "<img src=\"file:///android_asset/emoticons/pig.gif\" alt=\"pig\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4867
    :sswitch_211
    const-string v4, "<img src=\"file:///android_asset/emoticons/pocketbell.gif\" alt=\"pocketbell\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4870
    :sswitch_212
    const-string v4, "<img src=\"file:///android_asset/emoticons/bus.gif\" alt=\"bus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4873
    :sswitch_213
    const-string v4, "<img src=\"file:///android_asset/emoticons/parking.gif\" alt=\"parking\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4876
    :sswitch_214
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon3.gif\" alt=\"moon3\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4879
    :sswitch_215
    const-string v4, "<img src=\"file:///android_asset/emoticons/eye.gif\" alt=\"eye\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4882
    :sswitch_216
    const-string v4, "<img src=\"file:///android_asset/emoticons/cd.gif\" alt=\"cd\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4885
    :sswitch_217
    const-string v4, "<img src=\"file:///android_asset/emoticons/upwardleft.gif\" alt=\"upwardleft\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4888
    :sswitch_218
    const-string v4, "<img src=\"file:///android_asset/emoticons/ship.gif\" alt=\"ship\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4891
    :sswitch_219
    const-string v4, "<img src=\"file:///android_asset/emoticons/car.gif\" alt=\"car\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4894
    :sswitch_21a
    const-string v4, "<img src=\"file:///android_asset/emoticons/smile.gif\" alt=\"smile\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4897
    :sswitch_21b
    const-string v4, "<img src=\"file:///android_asset/emoticons/impact.gif\" alt=\"impact\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4900
    :sswitch_21c
    const-string v4, "<img src=\"file:///android_asset/emoticons/moneybag.gif\" alt=\"moneybag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4903
    :sswitch_21d
    const-string v4, "<img src=\"file:///android_asset/emoticons/motorsports.gif\" alt=\"motorsports\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4906
    :sswitch_21e
    const-string v4, "<img src=\"file:///android_asset/emoticons/virgo.gif\" alt=\"virgo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4909
    :sswitch_21f
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart01.gif\" alt=\"heart01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4912
    :sswitch_220
    const-string v4, "<img src=\"file:///android_asset/emoticons/pen.gif\" alt=\"pen\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4915
    :sswitch_221
    const-string v4, "<img src=\"file:///android_asset/emoticons/yen.gif\" alt=\"yen\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4918
    :sswitch_222
    const-string v4, "<img src=\"file:///android_asset/emoticons/mist.gif\" alt=\"mist\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4921
    :sswitch_223
    const-string v4, "<img src=\"file:///android_asset/emoticons/diamond.gif\" alt=\"diamond\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4924
    :sswitch_224
    const-string v4, "<img src=\"file:///android_asset/emoticons/24hours.gif\" alt=\"24hours\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4927
    :sswitch_225
    const-string v4, "<img src=\"file:///android_asset/emoticons/three.gif\" alt=\"three\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4930
    :sswitch_226
    const-string v4, "<img src=\"file:///android_asset/emoticons/updown.gif\" alt=\"updown\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4933
    :sswitch_227
    const-string v4, "<img src=\"file:///android_asset/emoticons/spade.gif\" alt=\"spade\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4936
    :sswitch_228
    const-string v4, "<img src=\"file:///android_asset/emoticons/libra.gif\" alt=\"libra\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4939
    :sswitch_229
    const-string v4, "<img src=\"file:///android_asset/emoticons/mobilephone.gif\" alt=\"mobilephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4942
    :sswitch_22a
    const-string v4, "<img src=\"file:///android_asset/emoticons/golf.gif\" alt=\"golf\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4945
    :sswitch_22b
    const-string v4, "<img src=\"file:///android_asset/emoticons/faxto.gif\" alt=\"faxto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4952
    :sswitch_22c
    const-string v4, "<img src=\"file:///android_asset/emoticons/fastfood.gif\" alt=\"fastfood\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4955
    :sswitch_22d
    const-string v4, "<img src=\"file:///android_asset/emoticons/pencil.gif\" alt=\"pencil\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4958
    :sswitch_22e
    const-string v4, "<img src=\"file:///android_asset/emoticons/one.gif\" alt=\"one\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4961
    :sswitch_22f
    const-string v4, "<img src=\"file:///android_asset/emoticons/sharp.gif\" alt=\"sharp\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4964
    :sswitch_230
    const-string v4, "<img src=\"file:///android_asset/emoticons/flair.gif\" alt=\"flair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4967
    :sswitch_231
    const-string v4, "<img src=\"file:///android_asset/emoticons/run.gif\" alt=\"run\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4970
    :sswitch_232
    const-string v4, "<img src=\"file:///android_asset/emoticons/drama.gif\" alt=\"drama\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4973
    :sswitch_233
    const-string v4, "<img src=\"file:///android_asset/emoticons/apple.gif\" alt=\"apple\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4976
    :sswitch_234
    const-string v4, "<img src=\"file:///android_asset/emoticons/kissmark.gif\" alt=\"kissmark\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4979
    :sswitch_235
    const-string v4, "<img src=\"file:///android_asset/emoticons/enter.gif\" alt=\"enter\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4982
    :sswitch_236
    const-string v4, "<img src=\"file:///android_asset/emoticons/ribbon.gif\" alt=\"ribbon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4985
    :sswitch_237
    const-string v4, "<img src=\"file:///android_asset/emoticons/five.gif\" alt=\"five\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4988
    :sswitch_238
    const-string v4, "<img src=\"file:///android_asset/emoticons/gasstation.gif\" alt=\"gasstation\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4991
    :sswitch_239
    const-string v4, "<img src=\"file:///android_asset/emoticons/movie.gif\" alt=\"movie\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4994
    :sswitch_23a
    const-string v4, "<img src=\"file:///android_asset/emoticons/snowboard.gif\" alt=\"snowboard\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 4997
    :sswitch_23b
    const-string v4, "<img src=\"file:///android_asset/emoticons/sprinkle.gif\" alt=\"sprinkle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5000
    :sswitch_23c
    const-string v4, "<img src=\"file:///android_asset/emoticons/school.gif\" alt=\"school\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5003
    :sswitch_23d
    const-string v4, "<img src=\"file:///android_asset/emoticons/sandclock.gif\" alt=\"sandclock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5006
    :sswitch_23e
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign05.gif\" alt=\"sign05\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5009
    :sswitch_23f
    const-string v4, "<img src=\"file:///android_asset/emoticons/clear.gif\" alt=\"clear\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5012
    :sswitch_240
    const-string v4, "<img src=\"file:///android_asset/emoticons/postoffice.gif\" alt=\"postoffice\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5015
    :sswitch_241
    const-string v4, "<img src=\"file:///android_asset/emoticons/mailto.gif\" alt=\"mailto\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5018
    :sswitch_242
    const-string v4, "<img src=\"file:///android_asset/emoticons/seven.gif\" alt=\"seven\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5021
    :sswitch_243
    const-string v4, "<img src=\"file:///android_asset/emoticons/bar.gif\" alt=\"bar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5024
    :sswitch_244
    const-string v4, "<img src=\"file:///android_asset/emoticons/thunder.gif\" alt=\"thunder\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5027
    :sswitch_245
    const-string v4, "<img src=\"file:///android_asset/emoticons/moon1.gif\" alt=\"moon1\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5030
    :sswitch_246
    const-string v4, "<img src=\"file:///android_asset/emoticons/leftright.gif\" alt=\"leftright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5033
    :sswitch_247
    const-string v4, "<img src=\"file:///android_asset/emoticons/clover.gif\" alt=\"clover\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5036
    :sswitch_248
    const-string v4, "<img src=\"file:///android_asset/emoticons/cancer.gif\" alt=\"cancer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5039
    :sswitch_249
    const-string v4, "<img src=\"file:///android_asset/emoticons/loveletter.gif\" alt=\"loveletter\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5042
    :sswitch_24a
    const-string v4, "<img src=\"file:///android_asset/emoticons/chick.gif\" alt=\"chick\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5045
    :sswitch_24b
    const-string v4, "<img src=\"file:///android_asset/emoticons/present.gif\" alt=\"present\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5048
    :sswitch_24c
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart04.gif\" alt=\"heart04\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5051
    :sswitch_24d
    const-string v4, "<img src=\"file:///android_asset/emoticons/sad.gif\" alt=\"sad\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5054
    :sswitch_24e
    const-string v4, "<img src=\"file:///android_asset/emoticons/nine.gif\" alt=\"nine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5057
    :sswitch_24f
    const-string v4, "<img src=\"file:///android_asset/emoticons/sign01.gif\" alt=\"sign01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5060
    :sswitch_250
    const-string v4, "<img src=\"file:///android_asset/emoticons/catface.gif\" alt=\"catface\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5063
    :sswitch_251
    const-string v4, "<img src=\"file:///android_asset/emoticons/six.gif\" alt=\"six\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5066
    :sswitch_252
    const-string v4, "<img src=\"file:///android_asset/emoticons/mobaq.gif\" alt=\"mobaq\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5069
    :sswitch_253
    const-string v4, "<img src=\"file:///android_asset/emoticons/snow.gif\" alt=\"snow\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5072
    :sswitch_254
    const-string v4, "<img src=\"file:///android_asset/emoticons/tennis.gif\" alt=\"tennis\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5075
    :sswitch_255
    const-string v4, "<img src=\"file:///android_asset/emoticons/fuji.gif\" alt=\"fuji\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5078
    :sswitch_256
    const-string v4, "<img src=\"file:///android_asset/emoticons/copyright.gif\" alt=\"copyright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5081
    :sswitch_257
    const-string v4, "<img src=\"file:///android_asset/emoticons/horse.gif\" alt=\"horse\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5084
    :sswitch_258
    const-string v4, "<img src=\"file:///android_asset/emoticons/bullettrain.gif\" alt=\"bullettrain\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5087
    :sswitch_259
    const-string v4, "<img src=\"file:///android_asset/emoticons/telephone.gif\" alt=\"telephone\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5090
    :sswitch_25a
    const-string v4, "<img src=\"file:///android_asset/emoticons/aries.gif\" alt=\"aries\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5093
    :sswitch_25b
    const-string v4, "<img src=\"file:///android_asset/emoticons/signaler.gif\" alt=\"signaler\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5096
    :sswitch_25c
    const-string v4, "<img src=\"file:///android_asset/emoticons/angry.gif\" alt=\"angry\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5099
    :sswitch_25d
    const-string v4, "<img src=\"file:///android_asset/emoticons/tm.gif\" alt=\"tm\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5102
    :sswitch_25e
    const-string v4, "<img src=\"file:///android_asset/emoticons/boutique.gif\" alt=\"boutique\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5105
    :sswitch_25f
    const-string v4, "<img src=\"file:///android_asset/emoticons/leo.gif\" alt=\"leo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5108
    :sswitch_260
    const-string v4, "<img src=\"file:///android_asset/emoticons/club.gif\" alt=\"club\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5111
    :sswitch_261
    const-string v4, "<img src=\"file:///android_asset/emoticons/aquarius.gif\" alt=\"aquarius\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5114
    :sswitch_262
    const-string v4, "<img src=\"file:///android_asset/emoticons/bicycle.gif\" alt=\"bicycle\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5117
    :sswitch_263
    const-string v4, "<img src=\"file:///android_asset/emoticons/bleah.gif\" alt=\"bleah\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5120
    :sswitch_264
    const-string v4, "<img src=\"file:///android_asset/emoticons/book.gif\" alt=\"book\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5123
    :sswitch_265
    const-string v4, "<img src=\"file:///android_asset/emoticons/ok.gif\" alt=\"ok\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5126
    :sswitch_266
    const-string v4, "<img src=\"file:///android_asset/emoticons/paper.gif\" alt=\"paper\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5129
    :sswitch_267
    const-string v4, "<img src=\"file:///android_asset/emoticons/annoy.gif\" alt=\"annoy\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5132
    :sswitch_268
    const-string v4, "<img src=\"file:///android_asset/emoticons/clip.gif\" alt=\"clip\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5135
    :sswitch_269
    const-string v4, "<img src=\"file:///android_asset/emoticons/rouge.gif\" alt=\"rouge\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5138
    :sswitch_26a
    const-string v4, "<img src=\"file:///android_asset/emoticons/bread.gif\" alt=\"bread\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5141
    :sswitch_26b
    const-string v4, "<img src=\"file:///android_asset/emoticons/key.gif\" alt=\"key\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5144
    :sswitch_26c
    const-string v4, "<img src=\"file:///android_asset/emoticons/clock.gif\" alt=\"clock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5147
    :sswitch_26d
    const-string v4, "<img src=\"file:///android_asset/emoticons/bud.gif\" alt=\"bud\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5150
    :sswitch_26e
    const-string v4, "<img src=\"file:///android_asset/emoticons/empty.gif\" alt=\"empty\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5153
    :sswitch_26f
    const-string v4, "<img src=\"file:///android_asset/emoticons/new.gif\" alt=\"new\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5156
    :sswitch_270
    const-string v4, "<img src=\"file:///android_asset/emoticons/bomb.gif\" alt=\"bomb\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5159
    :sswitch_271
    const-string v4, "<img src=\"file:///android_asset/emoticons/coldsweats02.gif\" alt=\"coldsweats02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5162
    :sswitch_272
    const-string v4, "<img src=\"file:///android_asset/emoticons/pisces.gif\" alt=\"pisces\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5165
    :sswitch_273
    const-string v4, "<img src=\"file:///android_asset/emoticons/punch.gif\" alt=\"punch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5168
    :sswitch_274
    const-string v4, "<img src=\"file:///android_asset/emoticons/pout.gif\" alt=\"pout\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5171
    :sswitch_275
    const-string v4, "<img src=\"file:///android_asset/emoticons/typhoon.gif\" alt=\"typhoon\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5174
    :sswitch_276
    const-string v4, "<img src=\"file:///android_asset/emoticons/sweat01.gif\" alt=\"sweat01\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5177
    :sswitch_277
    const-string v4, "<img src=\"file:///android_asset/emoticons/dollar.gif\" alt=\"dollar\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5180
    :sswitch_278
    const-string v4, "<img src=\"file:///android_asset/emoticons/shock.gif\" alt=\"shock\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5183
    :sswitch_279
    const-string v4, "<img src=\"file:///android_asset/emoticons/good.gif\" alt=\"good\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5186
    :sswitch_27a
    const-string v4, "<img src=\"file:///android_asset/emoticons/secret.gif\" alt=\"secret\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5189
    :sswitch_27b
    const-string v4, "<img src=\"file:///android_asset/emoticons/tulip.gif\" alt=\"tulip\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5192
    :sswitch_27c
    const-string v4, "<img src=\"file:///android_asset/emoticons/hotel.gif\" alt=\"hotel\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5195
    :sswitch_27d
    const-string v4, "<img src=\"file:///android_asset/emoticons/eyeglass.gif\" alt=\"eyeglass\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5198
    :sswitch_27e
    const-string v4, "<img src=\"file:///android_asset/emoticons/night.gif\" alt=\"night\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5201
    :sswitch_27f
    const-string v4, "<img src=\"file:///android_asset/emoticons/upwardright.gif\" alt=\"upwardright\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5204
    :sswitch_280
    const-string v4, "<img src=\"file:///android_asset/emoticons/down.gif\" alt=\"down\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5207
    :sswitch_281
    const-string v4, "<img src=\"file:///android_asset/emoticons/cat.gif\" alt=\"cat\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5210
    :sswitch_282
    const-string v4, "<img src=\"file:///android_asset/emoticons/art.gif\" alt=\"art\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5213
    :sswitch_283
    const-string v4, "<img src=\"file:///android_asset/emoticons/weep.gif\" alt=\"weep\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5216
    :sswitch_284
    const-string v4, "<img src=\"file:///android_asset/emoticons/dash.gif\" alt=\"dash\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5219
    :sswitch_285
    const-string v4, "<img src=\"file:///android_asset/emoticons/taurus.gif\" alt=\"taurus\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5222
    :sswitch_286
    const-string v4, "<img src=\"file:///android_asset/emoticons/watch.gif\" alt=\"watch\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5225
    :sswitch_287
    const-string v4, "<img src=\"file:///android_asset/emoticons/flag.gif\" alt=\"flag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5228
    :sswitch_288
    const-string v4, "<img src=\"file:///android_asset/emoticons/denim.gif\" alt=\"denim\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5231
    :sswitch_289
    const-string v4, "<img src=\"file:///android_asset/emoticons/confident.gif\" alt=\"confident\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5234
    :sswitch_28a
    const-string v4, "<img src=\"file:///android_asset/emoticons/yacht.gif\" alt=\"yacht\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5237
    :sswitch_28b
    const-string v4, "<img src=\"file:///android_asset/emoticons/bag.gif\" alt=\"bag\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5240
    :sswitch_28c
    const-string v4, "<img src=\"file:///android_asset/emoticons/ear.gif\" alt=\"ear\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5243
    :sswitch_28d
    const-string v4, "<img src=\"file:///android_asset/emoticons/dog.gif\" alt=\"dog\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5246
    :sswitch_28e
    const-string v4, "<img src=\"file:///android_asset/emoticons/mail.gif\" alt=\"mail\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5249
    :sswitch_28f
    const-string v4, "<img src=\"file:///android_asset/emoticons/banana.gif\" alt=\"banana\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5252
    :sswitch_290
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart.gif\" alt=\"heart\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5255
    :sswitch_291
    const-string v4, "<img src=\"file:///android_asset/emoticons/wheelchair.gif\" alt=\"wheelchair\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5258
    :sswitch_292
    const-string v4, "<img src=\"file:///android_asset/emoticons/heart02.gif\" alt=\"heart02\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5261
    :sswitch_293
    const-string v4, "<img src=\"file:///android_asset/emoticons/cloud.gif\" alt=\"cloud\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5264
    :sswitch_294
    const-string v4, "<img src=\"file:///android_asset/emoticons/beer.gif\" alt=\"beer\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5267
    :sswitch_295
    const-string v4, "<img src=\"file:///android_asset/emoticons/shine.gif\" alt=\"shine\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5270
    :sswitch_296
    const-string v4, "<img src=\"file:///android_asset/emoticons/memo.gif\" alt=\"memo\" />"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3259
    :sswitch_data_0
    .sparse-switch
        0xe003 -> :sswitch_10d
        0xe006 -> :sswitch_18a
        0xe007 -> :sswitch_14f
        0xe008 -> :sswitch_16f
        0xe009 -> :sswitch_172
        0xe00a -> :sswitch_1b1
        0xe00b -> :sswitch_16a
        0xe00c -> :sswitch_1a8
        0xe00d -> :sswitch_139
        0xe00e -> :sswitch_13c
        0xe010 -> :sswitch_150
        0xe011 -> :sswitch_104
        0xe012 -> :sswitch_134
        0xe013 -> :sswitch_125
        0xe014 -> :sswitch_147
        0xe015 -> :sswitch_1aa
        0xe016 -> :sswitch_142
        0xe018 -> :sswitch_154
        0xe019 -> :sswitch_173
        0xe01a -> :sswitch_136
        0xe01b -> :sswitch_185
        0xe01c -> :sswitch_174
        0xe01d -> :sswitch_128
        0xe01e -> :sswitch_170
        0xe021 -> :sswitch_148
        0xe022 -> :sswitch_14e
        0xe023 -> :sswitch_119
        0xe02d -> :sswitch_1ac
        0xe030 -> :sswitch_13f
        0xe033 -> :sswitch_198
        0xe034 -> :sswitch_15a
        0xe036 -> :sswitch_1b4
        0xe038 -> :sswitch_1ab
        0xe03a -> :sswitch_137
        0xe03b -> :sswitch_111
        0xe03c -> :sswitch_153
        0xe03d -> :sswitch_10b
        0xe03e -> :sswitch_107
        0xe03f -> :sswitch_138
        0xe043 -> :sswitch_19e
        0xe044 -> :sswitch_143
        0xe045 -> :sswitch_191
        0xe046 -> :sswitch_1b5
        0xe047 -> :sswitch_14c
        0xe048 -> :sswitch_129
        0xe049 -> :sswitch_167
        0xe04a -> :sswitch_157
        0xe04b -> :sswitch_106
        0xe04c -> :sswitch_1a1
        0xe04f -> :sswitch_183
        0xe052 -> :sswitch_116
        0xe055 -> :sswitch_152
        0xe056 -> :sswitch_195
        0xe057 -> :sswitch_140
        0xe058 -> :sswitch_1a0
        0xe059 -> :sswitch_127
        0xe103 -> :sswitch_1a6
        0xe104 -> :sswitch_1b6
        0xe105 -> :sswitch_13b
        0xe106 -> :sswitch_17c
        0xe107 -> :sswitch_156
        0xe108 -> :sswitch_11f
        0xe10b -> :sswitch_18d
        0xe10e -> :sswitch_180
        0xe10f -> :sswitch_12e
        0xe110 -> :sswitch_159
        0xe112 -> :sswitch_15c
        0xe114 -> :sswitch_17f
        0xe115 -> :sswitch_144
        0xe118 -> :sswitch_1a5
        0xe11f -> :sswitch_11e
        0xe120 -> :sswitch_177
        0xe123 -> :sswitch_19a
        0xe125 -> :sswitch_ff
        0xe126 -> :sswitch_18e
        0xe12a -> :sswitch_18b
        0xe12f -> :sswitch_1b0
        0xe132 -> :sswitch_19b
        0xe136 -> :sswitch_126
        0xe13c -> :sswitch_17b
        0xe13d -> :sswitch_124
        0xe13e -> :sswitch_15f
        0xe148 -> :sswitch_100
        0xe14d -> :sswitch_15d
        0xe14e -> :sswitch_196
        0xe14f -> :sswitch_145
        0xe151 -> :sswitch_135
        0xe153 -> :sswitch_1ae
        0xe154 -> :sswitch_13d
        0xe155 -> :sswitch_197
        0xe156 -> :sswitch_158
        0xe157 -> :sswitch_12d
        0xe158 -> :sswitch_1b2
        0xe159 -> :sswitch_155
        0xe202 -> :sswitch_1a3
        0xe208 -> :sswitch_189
        0xe20a -> :sswitch_109
        0xe20c -> :sswitch_11c
        0xe20d -> :sswitch_171
        0xe20e -> :sswitch_12b
        0xe20f -> :sswitch_17e
        0xe210 -> :sswitch_1a9
        0xe211 -> :sswitch_11d
        0xe212 -> :sswitch_162
        0xe21c -> :sswitch_10e
        0xe21d -> :sswitch_1a2
        0xe21e -> :sswitch_194
        0xe21f -> :sswitch_fe
        0xe220 -> :sswitch_164
        0xe221 -> :sswitch_16b
        0xe222 -> :sswitch_1af
        0xe223 -> :sswitch_fc
        0xe224 -> :sswitch_16e
        0xe225 -> :sswitch_1a7
        0xe229 -> :sswitch_141
        0xe22a -> :sswitch_199
        0xe22b -> :sswitch_132
        0xe236 -> :sswitch_188
        0xe237 -> :sswitch_10f
        0xe238 -> :sswitch_18c
        0xe239 -> :sswitch_11b
        0xe23f -> :sswitch_193
        0xe240 -> :sswitch_16c
        0xe241 -> :sswitch_161
        0xe242 -> :sswitch_101
        0xe243 -> :sswitch_168
        0xe244 -> :sswitch_117
        0xe245 -> :sswitch_113
        0xe246 -> :sswitch_176
        0xe247 -> :sswitch_12c
        0xe248 -> :sswitch_166
        0xe249 -> :sswitch_1b3
        0xe24a -> :sswitch_114
        0xe24d -> :sswitch_13a
        0xe24e -> :sswitch_16d
        0xe24f -> :sswitch_15b
        0xe252 -> :sswitch_103
        0xe301 -> :sswitch_184
        0xe304 -> :sswitch_122
        0xe30a -> :sswitch_149
        0xe30b -> :sswitch_1a4
        0xe30e -> :sswitch_10c
        0xe311 -> :sswitch_133
        0xe313 -> :sswitch_1b8
        0xe314 -> :sswitch_186
        0xe315 -> :sswitch_187
        0xe31c -> :sswitch_102
        0xe323 -> :sswitch_178
        0xe324 -> :sswitch_163
        0xe325 -> :sswitch_11a
        0xe326 -> :sswitch_169
        0xe327 -> :sswitch_146
        0xe32e -> :sswitch_151
        0xe330 -> :sswitch_120
        0xe331 -> :sswitch_182
        0xe334 -> :sswitch_1ad
        0xe338 -> :sswitch_130
        0xe339 -> :sswitch_17a
        0xe340 -> :sswitch_17d
        0xe342 -> :sswitch_105
        0xe345 -> :sswitch_179
        0xe34b -> :sswitch_131
        0xe402 -> :sswitch_18f
        0xe403 -> :sswitch_19d
        0xe404 -> :sswitch_121
        0xe405 -> :sswitch_13e
        0xe406 -> :sswitch_181
        0xe407 -> :sswitch_110
        0xe40a -> :sswitch_175
        0xe40e -> :sswitch_112
        0xe411 -> :sswitch_14a
        0xe413 -> :sswitch_160
        0xe415 -> :sswitch_fd
        0xe416 -> :sswitch_190
        0xe419 -> :sswitch_123
        0xe41b -> :sswitch_192
        0xe42a -> :sswitch_10a
        0xe42e -> :sswitch_15e
        0xe434 -> :sswitch_19c
        0xe435 -> :sswitch_12a
        0xe43c -> :sswitch_108
        0xe43e -> :sswitch_14d
        0xe443 -> :sswitch_115
        0xe44b -> :sswitch_1b7
        0xe469 -> :sswitch_275
        0xe46a -> :sswitch_25b
        0xe46b -> :sswitch_231
        0xe471 -> :sswitch_208
        0xe472 -> :sswitch_25c
        0xe473 -> :sswitch_1c2
        0xe475 -> :sswitch_1d8
        0xe476 -> :sswitch_230
        0xe477 -> :sswitch_203
        0xe478 -> :sswitch_24c
        0xe47a -> :sswitch_270
        0xe47c -> :sswitch_23d
        0xe47d -> :sswitch_20d
        0xe47e -> :sswitch_1c5
        0xe47f -> :sswitch_291
        0xe481 -> :sswitch_204
        0xe482 -> :sswitch_24f
        0xe485 -> :sswitch_253
        0xe486 -> :sswitch_214
        0xe487 -> :sswitch_244
        0xe488 -> :sswitch_1b9
        0xe48c -> :sswitch_1c3
        0xe48d -> :sswitch_293
        0xe48f -> :sswitch_25a
        0xe490 -> :sswitch_285
        0xe491 -> :sswitch_1e3
        0xe492 -> :sswitch_248
        0xe493 -> :sswitch_25f
        0xe494 -> :sswitch_21e
        0xe495 -> :sswitch_228
        0xe496 -> :sswitch_1d3
        0xe497 -> :sswitch_1db
        0xe498 -> :sswitch_1f1
        0xe499 -> :sswitch_261
        0xe49a -> :sswitch_272
        0xe49c -> :sswitch_28b
        0xe49e -> :sswitch_1de
        0xe49f -> :sswitch_264
        0xe4a0 -> :sswitch_268
        0xe4a1 -> :sswitch_22d
        0xe4a3 -> :sswitch_1d9
        0xe4a4 -> :sswitch_224
        0xe4a5 -> :sswitch_1d2
        0xe4a6 -> :sswitch_213
        0xe4aa -> :sswitch_201
        0xe4ab -> :sswitch_1e2
        0xe4ac -> :sswitch_1ed
        0xe4ad -> :sswitch_1fc
        0xe4ae -> :sswitch_262
        0xe4af -> :sswitch_212
        0xe4b0 -> :sswitch_258
        0xe4b1 -> :sswitch_219
        0xe4b3 -> :sswitch_20f
        0xe4b4 -> :sswitch_28a
        0xe4b5 -> :sswitch_202
        0xe4b6 -> :sswitch_1cf
        0xe4b7 -> :sswitch_254
        0xe4b8 -> :sswitch_23a
        0xe4b9 -> :sswitch_21d
        0xe4ba -> :sswitch_1bb
        0xe4bc -> :sswitch_1eb
        0xe4be -> :sswitch_1d1
        0xe4c1 -> :sswitch_1be
        0xe4c2 -> :sswitch_243
        0xe4c3 -> :sswitch_294
        0xe4c6 -> :sswitch_1d4
        0xe4c7 -> :sswitch_277
        0xe4c9 -> :sswitch_1e4
        0xe4ca -> :sswitch_209
        0xe4ce -> :sswitch_1fd
        0xe4cf -> :sswitch_24b
        0xe4d0 -> :sswitch_1c1
        0xe4d2 -> :sswitch_1f5
        0xe4d5 -> :sswitch_20a
        0xe4d6 -> :sswitch_22c
        0xe4d8 -> :sswitch_257
        0xe4db -> :sswitch_281
        0xe4dc -> :sswitch_20e
        0xe4de -> :sswitch_210
        0xe4e0 -> :sswitch_24a
        0xe4e1 -> :sswitch_28d
        0xe4e4 -> :sswitch_27b
        0xe4e5 -> :sswitch_267
        0xe4e6 -> :sswitch_1e0
        0xe4e7 -> :sswitch_263
        0xe4eb -> :sswitch_234
        0xe4f1 -> :sswitch_27a
        0xe4f3 -> :sswitch_273
        0xe4f4 -> :sswitch_284
        0xe4f9 -> :sswitch_279
        0xe4fe -> :sswitch_27d
        0xe502 -> :sswitch_12f
        0xe503 -> :sswitch_165
        0xe504 -> :sswitch_21c
        0xe505 -> :sswitch_1f0
        0xe508 -> :sswitch_1e7
        0xe509 -> :sswitch_269
        0xe50c -> :sswitch_216
        0xe512 -> :sswitch_1bf
        0xe513 -> :sswitch_247
        0xe514 -> :sswitch_1ec
        0xe515 -> :sswitch_1f9
        0xe516 -> :sswitch_1d7
        0xe517 -> :sswitch_239
        0xe518 -> :sswitch_1ef
        0xe519 -> :sswitch_26b
        0xe51a -> :sswitch_25e
        0xe520 -> :sswitch_22b
        0xe521 -> :sswitch_28e
        0xe522 -> :sswitch_22e
        0xe523 -> :sswitch_118
        0xe524 -> :sswitch_225
        0xe525 -> :sswitch_1bc
        0xe526 -> :sswitch_237
        0xe527 -> :sswitch_251
        0xe528 -> :sswitch_242
        0xe529 -> :sswitch_1ee
        0xe52a -> :sswitch_24e
        0xe52c -> :sswitch_252
        0xe536 -> :sswitch_14b
        0xe537 -> :sswitch_19f
        0xe54c -> :sswitch_217
        0xe54d -> :sswitch_1f6
        0xe54e -> :sswitch_25d
        0xe555 -> :sswitch_27f
        0xe556 -> :sswitch_1d0
        0xe558 -> :sswitch_256
        0xe559 -> :sswitch_1c7
        0xe55d -> :sswitch_235
        0xe571 -> :sswitch_238
        0xe578 -> :sswitch_1bd
        0xe57a -> :sswitch_286
        0xe57d -> :sswitch_221
        0xe587 -> :sswitch_20b
        0xe588 -> :sswitch_229
        0xe594 -> :sswitch_26c
        0xe595 -> :sswitch_21f
        0xe596 -> :sswitch_259
        0xe597 -> :sswitch_205
        0xe598 -> :sswitch_222
        0xe599 -> :sswitch_22a
        0xe59a -> :sswitch_1da
        0xe59b -> :sswitch_211
        0xe59c -> :sswitch_282
        0xe59e -> :sswitch_1e1
        0xe59f -> :sswitch_236
        0xe5a0 -> :sswitch_1d5
        0xe5a1 -> :sswitch_227
        0xe5a2 -> :sswitch_223
        0xe5a3 -> :sswitch_260
        0xe5a4 -> :sswitch_215
        0xe5a5 -> :sswitch_28c
        0xe5a6 -> :sswitch_200
        0xe5a7 -> :sswitch_266
        0xe5a8 -> :sswitch_1dd
        0xe5a9 -> :sswitch_245
        0xe5aa -> :sswitch_1fe
        0xe5ab -> :sswitch_23f
        0xe5ac -> :sswitch_1cc
        0xe5ad -> :sswitch_265
        0xe5ae -> :sswitch_1df
        0xe5b0 -> :sswitch_21b
        0xe5b1 -> :sswitch_276
        0xe5b4 -> :sswitch_1ff
        0xe5b5 -> :sswitch_26f
        0xe5b6 -> :sswitch_1fa
        0xe5b8 -> :sswitch_1d6
        0xe5bc -> :sswitch_1e9
        0xe5bd -> :sswitch_255
        0xe5be -> :sswitch_1e5
        0xe5c3 -> :sswitch_1f7
        0xe5c4 -> :sswitch_1fb
        0xe5c5 -> :sswitch_278
        0xe5c6 -> :sswitch_271
        0xe5c9 -> :sswitch_1ea
        0xe5de -> :sswitch_240
        0xe5df -> :sswitch_1e8
        0xe63e -> :sswitch_4c
        0xe63f -> :sswitch_bf
        0xe640 -> :sswitch_b9
        0xe641 -> :sswitch_77
        0xe642 -> :sswitch_ce
        0xe643 -> :sswitch_80
        0xe644 -> :sswitch_35
        0xe645 -> :sswitch_2c
        0xe646 -> :sswitch_9f
        0xe647 -> :sswitch_2b
        0xe648 -> :sswitch_7c
        0xe649 -> :sswitch_e1
        0xe64a -> :sswitch_85
        0xe64b -> :sswitch_11
        0xe64c -> :sswitch_2a
        0xe64d -> :sswitch_1d
        0xe64e -> :sswitch_a1
        0xe64f -> :sswitch_24
        0xe650 -> :sswitch_e2
        0xe651 -> :sswitch_df
        0xe652 -> :sswitch_46
        0xe653 -> :sswitch_83
        0xe654 -> :sswitch_93
        0xe655 -> :sswitch_ca
        0xe656 -> :sswitch_56
        0xe657 -> :sswitch_bb
        0xe658 -> :sswitch_b
        0xe659 -> :sswitch_fa
        0xe65a -> :sswitch_c
        0xe65b -> :sswitch_81
        0xe65c -> :sswitch_3c
        0xe65d -> :sswitch_90
        0xe65e -> :sswitch_af
        0xe65f -> :sswitch_3f
        0xe660 -> :sswitch_44
        0xe661 -> :sswitch_10
        0xe662 -> :sswitch_5d
        0xe663 -> :sswitch_8d
        0xe664 -> :sswitch_40
        0xe665 -> :sswitch_f1
        0xe666 -> :sswitch_8c
        0xe667 -> :sswitch_18
        0xe668 -> :sswitch_f3
        0xe669 -> :sswitch_33
        0xe66a -> :sswitch_75
        0xe66b -> :sswitch_e9
        0xe66c -> :sswitch_cf
        0xe66d -> :sswitch_74
        0xe66e -> :sswitch_d5
        0xe66f -> :sswitch_d4
        0xe670 -> :sswitch_92
        0xe671 -> :sswitch_3a
        0xe672 -> :sswitch_b8
        0xe673 -> :sswitch_a9
        0xe674 -> :sswitch_25
        0xe675 -> :sswitch_a6
        0xe676 -> :sswitch_2f
        0xe677 -> :sswitch_f2
        0xe678 -> :sswitch_1a
        0xe679 -> :sswitch_9e
        0xe67a -> :sswitch_54
        0xe67b -> :sswitch_d9
        0xe67c -> :sswitch_c3
        0xe67d -> :sswitch_4d
        0xe67e -> :sswitch_12
        0xe67f -> :sswitch_8f
        0xe680 -> :sswitch_73
        0xe681 -> :sswitch_e4
        0xe682 -> :sswitch_1c
        0xe683 -> :sswitch_37
        0xe684 -> :sswitch_63
        0xe685 -> :sswitch_eb
        0xe686 -> :sswitch_6a
        0xe687 -> :sswitch_9a
        0xe688 -> :sswitch_f4
        0xe689 -> :sswitch_4e
        0xe68a -> :sswitch_b5
        0xe68b -> :sswitch_4f
        0xe68c -> :sswitch_9b
        0xe68d -> :sswitch_4
        0xe68e -> :sswitch_60
        0xe68f -> :sswitch_27
        0xe690 -> :sswitch_a0
        0xe691 -> :sswitch_21
        0xe692 -> :sswitch_ea
        0xe693 -> :sswitch_52
        0xe694 -> :sswitch_1b
        0xe695 -> :sswitch_8e
        0xe696 -> :sswitch_5a
        0xe697 -> :sswitch_ab
        0xe698 -> :sswitch_61
        0xe699 -> :sswitch_be
        0xe69a -> :sswitch_ae
        0xe69b -> :sswitch_28
        0xe69c -> :sswitch_57
        0xe69d -> :sswitch_30
        0xe69e -> :sswitch_b4
        0xe69f -> :sswitch_ba
        0xe6a0 -> :sswitch_ef
        0xe6a1 -> :sswitch_7e
        0xe6a2 -> :sswitch_98
        0xe6a3 -> :sswitch_c1
        0xe6a4 -> :sswitch_6e
        0xe6a5 -> :sswitch_5
        0xe6ac -> :sswitch_8b
        0xe6ad -> :sswitch_6
        0xe6ae -> :sswitch_78
        0xe6b1 -> :sswitch_91
        0xe6b2 -> :sswitch_84
        0xe6b3 -> :sswitch_e8
        0xe6b7 -> :sswitch_a7
        0xe6b8 -> :sswitch_47
        0xe6b9 -> :sswitch_d8
        0xe6ba -> :sswitch_49
        0xe6ce -> :sswitch_5b
        0xe6cf -> :sswitch_dc
        0xe6d0 -> :sswitch_f
        0xe6d1 -> :sswitch_99
        0xe6d2 -> :sswitch_2
        0xe6d3 -> :sswitch_fb
        0xe6d4 -> :sswitch_7
        0xe6d5 -> :sswitch_c7
        0xe6d6 -> :sswitch_13
        0xe6d7 -> :sswitch_8
        0xe6d8 -> :sswitch_a5
        0xe6d9 -> :sswitch_1e
        0xe6da -> :sswitch_64
        0xe6db -> :sswitch_8a
        0xe6dc -> :sswitch_71
        0xe6dd -> :sswitch_de
        0xe6de -> :sswitch_7d
        0xe6df -> :sswitch_88
        0xe6e0 -> :sswitch_14
        0xe6e1 -> :sswitch_16
        0xe6e2 -> :sswitch_a4
        0xe6e3 -> :sswitch_d
        0xe6e4 -> :sswitch_87
        0xe6e5 -> :sswitch_bd
        0xe6e6 -> :sswitch_2e
        0xe6e7 -> :sswitch_86
        0xe6e8 -> :sswitch_9
        0xe6e9 -> :sswitch_ec
        0xe6ea -> :sswitch_65
        0xe6eb -> :sswitch_c5
        0xe6ec -> :sswitch_43
        0xe6ed -> :sswitch_ad
        0xe6ee -> :sswitch_e6
        0xe6ef -> :sswitch_7f
        0xe6f0 -> :sswitch_4a
        0xe6f1 -> :sswitch_96
        0xe6f2 -> :sswitch_c8
        0xe6f3 -> :sswitch_d0
        0xe6f4 -> :sswitch_76
        0xe6f5 -> :sswitch_a2
        0xe6f6 -> :sswitch_53
        0xe6f7 -> :sswitch_67
        0xe6f8 -> :sswitch_dd
        0xe6f9 -> :sswitch_0
        0xe6fa -> :sswitch_f5
        0xe6fb -> :sswitch_6f
        0xe6fc -> :sswitch_2d
        0xe6fd -> :sswitch_d2
        0xe6fe -> :sswitch_15
        0xe6ff -> :sswitch_6c
        0xe700 -> :sswitch_c9
        0xe701 -> :sswitch_4b
        0xe702 -> :sswitch_42
        0xe703 -> :sswitch_cb
        0xe704 -> :sswitch_5f
        0xe705 -> :sswitch_cd
        0xe706 -> :sswitch_b6
        0xe707 -> :sswitch_38
        0xe708 -> :sswitch_94
        0xe709 -> :sswitch_31
        0xe70a -> :sswitch_17
        0xe70b -> :sswitch_22
        0xe70c -> :sswitch_bc
        0xe70d -> :sswitch_79
        0xe70e -> :sswitch_9c
        0xe70f -> :sswitch_ed
        0xe710 -> :sswitch_68
        0xe711 -> :sswitch_cc
        0xe712 -> :sswitch_62
        0xe713 -> :sswitch_f6
        0xe714 -> :sswitch_23
        0xe715 -> :sswitch_db
        0xe716 -> :sswitch_39
        0xe717 -> :sswitch_a8
        0xe718 -> :sswitch_50
        0xe719 -> :sswitch_aa
        0xe71a -> :sswitch_e7
        0xe71b -> :sswitch_34
        0xe71c -> :sswitch_b1
        0xe71d -> :sswitch_70
        0xe71e -> :sswitch_d1
        0xe71f -> :sswitch_e5
        0xe720 -> :sswitch_a3
        0xe721 -> :sswitch_6b
        0xe722 -> :sswitch_66
        0xe723 -> :sswitch_d7
        0xe724 -> :sswitch_6d
        0xe725 -> :sswitch_3d
        0xe726 -> :sswitch_26
        0xe727 -> :sswitch_c4
        0xe728 -> :sswitch_5c
        0xe729 -> :sswitch_1
        0xe72a -> :sswitch_32
        0xe72b -> :sswitch_3b
        0xe72c -> :sswitch_c6
        0xe72d -> :sswitch_45
        0xe72e -> :sswitch_da
        0xe72f -> :sswitch_c0
        0xe730 -> :sswitch_ac
        0xe731 -> :sswitch_19
        0xe732 -> :sswitch_7a
        0xe733 -> :sswitch_9d
        0xe734 -> :sswitch_1f
        0xe735 -> :sswitch_b2
        0xe736 -> :sswitch_97
        0xe737 -> :sswitch_41
        0xe738 -> :sswitch_b7
        0xe739 -> :sswitch_d6
        0xe73a -> :sswitch_c2
        0xe73b -> :sswitch_36
        0xe73c -> :sswitch_48
        0xe73d -> :sswitch_d3
        0xe73e -> :sswitch_58
        0xe73f -> :sswitch_69
        0xe740 -> :sswitch_e3
        0xe741 -> :sswitch_51
        0xe742 -> :sswitch_b0
        0xe743 -> :sswitch_55
        0xe744 -> :sswitch_89
        0xe745 -> :sswitch_3e
        0xe746 -> :sswitch_82
        0xe747 -> :sswitch_29
        0xe748 -> :sswitch_95
        0xe749 -> :sswitch_ee
        0xe74a -> :sswitch_e
        0xe74b -> :sswitch_f7
        0xe74c -> :sswitch_5e
        0xe74d -> :sswitch_f0
        0xe74e -> :sswitch_a
        0xe74f -> :sswitch_20
        0xe750 -> :sswitch_59
        0xe751 -> :sswitch_f9
        0xe752 -> :sswitch_b3
        0xe753 -> :sswitch_3
        0xe754 -> :sswitch_f8
        0xe755 -> :sswitch_7b
        0xe756 -> :sswitch_e0
        0xe757 -> :sswitch_72
        0xea80 -> :sswitch_23c
        0xea81 -> :sswitch_27c
        0xea82 -> :sswitch_218
        0xea88 -> :sswitch_1ba
        0xea89 -> :sswitch_1c9
        0xea8a -> :sswitch_26e
        0xea92 -> :sswitch_296
        0xea97 -> :sswitch_1f3
        0xeaa5 -> :sswitch_290
        0xeaab -> :sswitch_295
        0xeaac -> :sswitch_1f8
        0xeaae -> :sswitch_1cd
        0xeaaf -> :sswitch_26a
        0xeab9 -> :sswitch_233
        0xeabf -> :sswitch_250
        0xeac0 -> :sswitch_1c6
        0xeac2 -> :sswitch_1c4
        0xeac3 -> :sswitch_24d
        0xeac5 -> :sswitch_289
        0xeac9 -> :sswitch_1ca
        0xeacd -> :sswitch_1dc
        0xeae8 -> :sswitch_23b
        0xeaf1 -> :sswitch_27e
        0xeaf5 -> :sswitch_232
        0xeb03 -> :sswitch_220
        0xeb08 -> :sswitch_1f4
        0xeb2a -> :sswitch_20c
        0xeb2b -> :sswitch_206
        0xeb2c -> :sswitch_287
        0xeb2d -> :sswitch_1c8
        0xeb2e -> :sswitch_280
        0xeb2f -> :sswitch_1e6
        0xeb30 -> :sswitch_1ce
        0xeb31 -> :sswitch_23e
        0xeb35 -> :sswitch_28f
        0xeb5d -> :sswitch_274
        0xeb62 -> :sswitch_241
        0xeb69 -> :sswitch_283
        0xeb75 -> :sswitch_292
        0xeb77 -> :sswitch_288
        0xeb78 -> :sswitch_249
        0xeb79 -> :sswitch_1cb
        0xeb7a -> :sswitch_246
        0xeb7b -> :sswitch_226
        0xeb7c -> :sswitch_207
        0xeb7d -> :sswitch_26d
        0xeb7e -> :sswitch_1f2
        0xeb80 -> :sswitch_21a
        0xeb83 -> :sswitch_1c0
        0xeb84 -> :sswitch_22f
    .end sparse-switch
.end method

.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 2
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2141
    instance-of v0, p2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    if-nez v0, :cond_0

    .line 2143
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2145
    :cond_0
    check-cast p2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .end local p2    # "folder":Lcom/fsck/k9/mail/Folder;
    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;Z)V

    .line 2146
    return-void
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .locals 3
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$3;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1248
    const/4 v0, 0x1

    return v0
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
    .locals 3
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .param p2, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Folder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$4;

    invoke-direct {v2, p0, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$4;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1271
    const/4 v0, 0x1

    return v0
.end method

.method public delete(Lcom/fsck/k9/Preferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1655
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1659
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".inTopGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".integrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1666
    return-void
.end method

.method public delete(Z)V
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2939
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$26;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    return-void

    .line 2964
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2973
    instance-of v0, p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    if-eqz v0, :cond_0

    .line 2975
    check-cast p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2977
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$2;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 3
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1796
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;

    invoke-direct {v2, p0, p2, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$13;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/FetchProfile;[Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    return-void

    .line 1936
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getDisplayClass(Lcom/fsck/k9/Preferences;)Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 4
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v0

    .line 1711
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v1

    return-object v1
.end method

.method public getFlaggedMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1336
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1337
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFlaggedMessageCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1092
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2022
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$15;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2065
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public getMessageCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1285
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;

    invoke-direct {v2, p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$5;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1320
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "earliestDate"    # Ljava/util/Date;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1946
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1947
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2074
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;
    .locals 3
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p2, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2082
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$16;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/controller/MessageRetrievalListener;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Message;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .locals 7
    .param p1, "uids"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2121
    sget-object v6, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2122
    if-nez p1, :cond_0

    .line 2124
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v6

    .line 2135
    :goto_0
    return-object v6

    .line 2126
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2127
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 2129
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v3

    .line 2130
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    if-eqz v3, :cond_1

    .line 2132
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2135
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    .end local v5    # "uid":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$2200()[Lcom/fsck/k9/mail/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fsck/k9/mail/Message;

    goto :goto_0
.end method

.method public getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
    .locals 1

    .prologue
    .line 1183
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
    .locals 1

    .prologue
    .line 2989
    invoke-static {}, Lcom/fsck/k9/mail/store/LocalStore;->access$3100()[Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 2

    .prologue
    .line 1602
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_0

    .line 1604
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    .line 1608
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_0
.end method

.method public getPushState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mPushState:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getRawSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 2

    .prologue
    .line 1583
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v0, v1, :cond_0

    .line 1585
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    .line 1589
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto :goto_0
.end method

.method public getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2850
    new-instance v0, Lcom/fsck/k9/mail/MessagingException;

    const-string v1, "Cannot call getUidFromMessageId on LocalFolder"

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1329
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1330
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v0
.end method

.method public getVisibleLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1464
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1465
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public htmlifyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/high16 v8, 0x40000

    if-le v7, v8, :cond_0

    .line 3148
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<html><head/><body>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyMessageHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyMessageFooter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3222
    :goto_0
    return-object v7

    .line 3154
    :cond_0
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 3155
    .local v4, "reader":Ljava/io/StringReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3156
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3159
    .local v1, "c":I
    :goto_1
    :sswitch_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/StringReader;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 3161
    sparse-switch v1, :sswitch_data_0

    .line 3175
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3179
    :catch_0
    move-exception v2

    .line 3182
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "k9"

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3184
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3185
    const-string v8, "\\s*([-=_]{30,}+)\\s*"

    const-string v9, "<hr />"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3186
    const-string v8, "(?m)^([^\r\n]{4,}[\\s\\w,:;+/])(?:\r\n|\n|\r)(?=[a-z]\\S{0,10}[\\s\\n\\r])"

    const-string v9, "$1 "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3187
    const-string v8, "(?m)(\r\n|\n|\r){4,}"

    const-string v9, "\n\n"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3190
    sget-object v7, Lcom/fsck/k9/helper/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3191
    .local v3, "m":Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3192
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v7, "<html><head></head><body>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3193
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyMessageHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3194
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3196
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 3197
    .local v6, "start":I
    if-eqz v6, :cond_2

    if-eqz v6, :cond_4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_4

    .line 3199
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_3

    .line 3201
    const-string v7, "<a href=\"$0\">$0</a>"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 3164
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "start":I
    :sswitch_1
    :try_start_1
    const-string v7, "&amp;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3167
    :sswitch_2
    const-string v7, "&lt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3170
    :sswitch_3
    const-string v7, "&gt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3205
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "start":I
    :cond_3
    const-string v7, "<a href=\"http://$0\">$0</a>"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 3210
    :cond_4
    const-string v7, "$0"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 3217
    .end local v6    # "start":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 3218
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyMessageFooter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3219
    const-string v7, "</body></html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3220
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 3161
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method public isInTopGroup()Z
    .locals 1

    .prologue
    .line 5289
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    return v0
.end method

.method public isIntegrate()Z
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    return v0
.end method

.method public isOpen()Z
    .locals 4

    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markupContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;

    .prologue
    .line 3130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3132
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->htmlifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3135
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->convertEmoji2ImgForDocomo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3137
    return-object v0
.end method

.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 4
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "destFolder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2151
    instance-of v1, p2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    if-nez v1, :cond_0

    .line 2153
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "moveMessages called with non-LocalFolder"

    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 2156
    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .line 2160
    .local v0, "lDestFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;

    invoke-direct {v3, p0, v0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$17;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;[Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2216
    return-void

    .line 2213
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/MessagingException;

    throw v1
.end method

.method public open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/fsck/k9/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$1;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public purgeToVisibleLimit(Lcom/fsck/k9/controller/MessageRemovalListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRemovalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1470
    iget v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    if-nez v2, :cond_1

    .line 1485
    :cond_0
    return-void

    .line 1474
    :cond_1
    sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 1475
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 1476
    .local v1, "messages":[Lcom/fsck/k9/mail/Message;
    iget v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1478
    if-eqz p1, :cond_2

    .line 1480
    aget-object v3, v1, v0

    iget-object v2, p1, Lcom/fsck/k9/controller/MessageRemovalListener;->this$0:Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v2}, Lcom/fsck/k9/controller/MessagingController;->getListeners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/controller/MessagingListener;

    iget-object v5, p1, Lcom/fsck/k9/controller/MessageRemovalListener;->val$account:Lcom/fsck/k9/Account;

    iget-object v6, p1, Lcom/fsck/k9/controller/MessageRemovalListener;->val$folder:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v3}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 1482
    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->destroy()V

    .line 1476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refresh(Lcom/fsck/k9/Preferences;)V
    .locals 9
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v5

    .line 1723
    .local v5, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".displayMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    :goto_0
    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v7, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v7, :cond_0

    .line 1734
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1738
    :cond_0
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1739
    .local v3, "defSyncClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    const-string v6, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1741
    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1746
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".syncMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1755
    :goto_1
    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v7, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v7, :cond_2

    .line 1757
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1760
    :cond_2
    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1761
    .local v2, "defPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    const/4 v0, 0x0

    .line 1762
    .local v0, "defInTopGroup":Z
    const/4 v1, 0x0

    .line 1763
    .local v1, "defIntegrate":Z
    const-string v6, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1765
    sget-object v2, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1766
    const/4 v0, 0x1

    .line 1767
    const/4 v1, 0x1

    .line 1772
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pushMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fsck/k9/mail/Folder$FolderClass;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1781
    :goto_2
    iget-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v7, Lcom/fsck/k9/mail/Folder$FolderClass;->NONE:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v7, :cond_4

    .line 1783
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1785
    :cond_4
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".inTopGroup"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    .line 1786
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".integrate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    .line 1788
    return-void

    .line 1726
    .end local v0    # "defInTopGroup":Z
    .end local v1    # "defIntegrate":Z
    .end local v2    # "defPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v3    # "defSyncClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    :catch_0
    move-exception v4

    .line 1728
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to load displayMode for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1730
    sget-object v6, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    iput-object v6, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto/16 :goto_0

    .line 1749
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "defSyncClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    :catch_1
    move-exception v4

    .line 1751
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to load syncMode for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1753
    iput-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto/16 :goto_1

    .line 1775
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "defInTopGroup":Z
    .restart local v1    # "defIntegrate":Z
    .restart local v2    # "defPushClass":Lcom/fsck/k9/mail/Folder$FolderClass;
    :catch_2
    move-exception v4

    .line 1777
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to load pushMode for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    iput-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    goto/16 :goto_2
.end method

.method public save(Lcom/fsck/k9/Preferences;)V
    .locals 4
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPrefId()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1674
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_0

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1683
    :goto_0
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->INHERITED:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_1

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1692
    :goto_1
    iget-object v2, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v2, v3, :cond_2

    const-string v2, "INBOX"

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1700
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".inTopGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".integrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1705
    return-void

    .line 1680
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".displayMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 1689
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syncMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1698
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pushMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder$FolderClass;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2
.end method

.method public setDisplayClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 0
    .param p1, "displayClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->displayClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1621
    return-void
.end method

.method public setFlaggedMessageCount(I)V
    .locals 3
    .param p1, "flaggedMessageCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$7;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    return-void

    .line 1394
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2840
    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2841
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2843
    invoke-virtual {v3, p1, p2}, Lcom/fsck/k9/mail/Message;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    .line 2841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2845
    :cond_0
    return-void
.end method

.method public setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2829
    sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2830
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2832
    invoke-virtual {v3, p2, p3}, Lcom/fsck/k9/mail/Message;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    .line 2830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2834
    :cond_0
    return-void
.end method

.method public setInTopGroup(Z)V
    .locals 0
    .param p1, "inTopGroup"    # Z

    .prologue
    .line 5294
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->inTopGroup:Z

    .line 5295
    return-void
.end method

.method public setIntegrate(Z)V
    .locals 0
    .param p1, "integrate"    # Z

    .prologue
    .line 1638
    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->mIntegrate:Z

    .line 1639
    return-void
.end method

.method public setLastChecked(J)V
    .locals 3
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1405
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$8;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    return-void

    .line 1425
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setLastPush(J)V
    .locals 3
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$9;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;J)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    return-void

    .line 1456
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setPushClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 0
    .param p1, "pushClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->pushClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1630
    return-void
.end method

.method public setPushState(Ljava/lang/String;)V
    .locals 3
    .param p1, "pushState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$12;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$12;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    return-void

    .line 1565
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1516
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$11;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$11;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    return-void

    .line 1536
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setSyncClass(Lcom/fsck/k9/mail/Folder$FolderClass;)V
    .locals 0
    .param p1, "syncClass"    # Lcom/fsck/k9/mail/Folder$FolderClass;

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->syncClass:Lcom/fsck/k9/mail/Folder$FolderClass;

    .line 1626
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .locals 3
    .param p1, "unreadMessageCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$6;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    return-void

    .line 1364
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method

.method public setVisibleLimit(I)V
    .locals 3
    .param p1, "visibleLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$10;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$10;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;I)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1509
    return-void
.end method

.method public storeSmallMessage(Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)Lcom/fsck/k9/mail/Message;
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;

    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$18;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Message;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method public updateMessage(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2443
    sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2446
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-static {v0}, Lcom/fsck/k9/mail/store/LocalStore;->access$200(Lcom/fsck/k9/mail/store/LocalStore;)Lcom/fsck/k9/mail/store/LockableDatabase;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;

    invoke-direct {v2, p0, p1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder$20;-><init>(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/LockableDatabase;->execute(ZLcom/fsck/k9/mail/store/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2549
    return-void

    .line 2546
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/MessagingException;

    throw v0
.end method
