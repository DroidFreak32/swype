.class public abstract Lcom/fsck/k9/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;
.implements Lcom/fsck/k9/mail/Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/Message$RecipientType;
    }
.end annotation


# static fields
.field private static final EMPTY_FLAG_ARRAY:[Lcom/fsck/k9/mail/Flag;


# instance fields
.field protected mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/fsck/k9/mail/Folder;

.field protected mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    sput-object v0, Lcom/fsck/k9/mail/Message;->EMPTY_FLAG_ARRAY:[Lcom/fsck/k9/mail/Flag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 151
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 200
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/fsck/k9/mail/Message;

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/fsck/k9/mail/Message;

    .line 51
    .local v0, "other":Lcom/fsck/k9/mail/Message;
    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract getBody()Lcom/fsck/k9/mail/Body;
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFlags()[Lcom/fsck/k9/mail/Flag;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    sget-object v1, Lcom/fsck/k9/mail/Message;->EMPTY_FLAG_ARRAY:[Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fsck/k9/mail/Flag;

    return-object v0
.end method

.method public getFolder()Lcom/fsck/k9/mail/Folder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeaderNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReferences()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/fsck/k9/mail/Address;
.end method

.method public abstract getSentDate()Ljava/util/Date;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    iget-object v1, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 63
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 64
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 65
    return v1
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Lcom/fsck/k9/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public makeMessageReference()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public olderThan(Ljava/util/Date;)Z
    .locals 2
    .param p1, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 33
    .local v0, "myDate":Ljava/util/Date;
    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v0

    .line 37
    :cond_2
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    goto :goto_0
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .locals 1
    .param p1, "flag"    # Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .locals 4
    .param p1, "flags"    # [Lcom/fsck/k9/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p1

    .local v0, "arr$":[Lcom/fsck/k9/mail/Flag;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 190
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p0, v1, p2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "flag":Lcom/fsck/k9/mail/Flag;
    :cond_0
    return-void
.end method

.method public abstract setFrom(Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setInReplyTo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "internalDate"    # Ljava/util/Date;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 95
    return-void
.end method

.method public setRecipient(Lcom/fsck/k9/mail/Message$RecipientType;Lcom/fsck/k9/mail/Address;)V
    .locals 2
    .param p1, "type"    # Lcom/fsck/k9/mail/Message$RecipientType;
    .param p2, "address"    # Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    .line 112
    return-void
.end method

.method public abstract setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReferences(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    .line 76
    return-void
.end method
