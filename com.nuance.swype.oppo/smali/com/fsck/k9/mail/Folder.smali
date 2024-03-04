.class public abstract Lcom/fsck/k9/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/Folder$FolderType;,
        Lcom/fsck/k9/mail/Folder$FolderClass;,
        Lcom/fsck/k9/mail/Folder$OpenMode;
    }
.end annotation


# instance fields
.field private lastChecked:J

.field private lastPush:J

.field protected final mAccount:Lcom/fsck/k9/Account;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    .line 17
    iput-wide v2, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    .line 18
    iput-wide v2, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/mail/Folder;->mAccount:Lcom/fsck/k9/Account;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract appendMessages([Lcom/fsck/k9/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    return-void
.end method

.method public abstract create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public create(Lcom/fsck/k9/mail/Folder$FolderType;I)Z
    .locals 1
    .param p1, "type"    # Lcom/fsck/k9/mail/Folder$FolderType;
    .param p2, "displayLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v0

    return v0
.end method

.method public abstract delete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V
    .locals 5
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 122
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v4

    .line 123
    invoke-virtual {v4, p2}, Lcom/fsck/k9/mail/Message;->delete(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    return-void
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public expunge()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public abstract fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessageRetrievalListener;)V
    .locals 1
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "part"    # Lcom/fsck/k9/mail/Part;
    .param p3, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 146
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 147
    return-void
.end method

.method public getAccount()Lcom/fsck/k9/Account;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fsck/k9/mail/Folder;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method public getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderClass;->NO_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    return-object v0
.end method

.method public abstract getFlaggedMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getLastChecked()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    return-wide v0
.end method

.method public getLastPush()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    return-wide v0
.end method

.method public getLastUpdate()J
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getLastPush()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessageRetrievalListener;
    .param p2, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/Folder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMessages([Ljava/lang/String;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/fsck/k9/mail/Folder$OpenMode;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "oldPushState"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPermanentFlags()[Lcom/fsck/k9/mail/Flag;
.end method

.method public getPushClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncClass()Lcom/fsck/k9/mail/Folder$FolderClass;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public isInTopGroup()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOpen()Z
.end method

.method public moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p1, "msgs"    # [Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method public abstract open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public refresh(Lcom/fsck/k9/Preferences;)V
    .locals 0
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 220
    return-void
.end method

.method public abstract setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setLastChecked(J)V
    .locals 1
    .param p1, "lastChecked"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastChecked:J

    .line 186
    return-void
.end method

.method public setLastPush(J)V
    .locals 1
    .param p1, "lastCheckedDisplay"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/fsck/k9/mail/Folder;->lastPush:J

    .line 196
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fsck/k9/mail/Folder;->status:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public supportsFetchingFlags()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
