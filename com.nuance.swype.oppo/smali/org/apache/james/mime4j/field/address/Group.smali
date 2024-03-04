.class public final Lorg/apache/james/mime4j/field/address/Group;
.super Lorg/apache/james/mime4j/field/address/Address;
.source "Group.java"


# instance fields
.field private mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mailboxes"    # Lorg/apache/james/mime4j/field/address/MailboxList;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Address;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    .line 40
    return-void
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "results"    # Ljava/util/ArrayList;

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Group;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 63
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
