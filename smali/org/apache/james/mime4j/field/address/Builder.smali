.class final Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuffer;
    .param p2, "specialToken"    # Lorg/apache/james/mime4j/field/address/parser/Token;

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 211
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .param p1, "route"    # Lorg/apache/james/mime4j/field/address/DomainList;
    .param p2, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .prologue
    const/4 v4, 0x1

    .line 185
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 186
    .local v1, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "localPart":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 7
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .prologue
    .line 150
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 151
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 152
    .local v2, "route":Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 153
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_3

    .line 154
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v5, v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    :goto_0
    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v6, :cond_0

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_1
    new-instance v2, Lorg/apache/james/mime4j/field/address/DomainList;

    .end local v2    # "route":Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-direct {v2, v4}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;)V

    .line 155
    .restart local v2    # "route":Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 162
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_4

    .line 163
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 157
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_3
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_2

    .line 158
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 165
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 6
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .prologue
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "results":Ljava/util/ArrayList;
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 101
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 103
    .local v1, "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_5

    .line 104
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    new-instance v3, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v3, v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v4, v3, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    new-instance v4, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v4, v3}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    instance-of v5, v3, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v5, :cond_2

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    invoke-static {v5}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 106
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 107
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_6
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
    .param p2, "stripSpaces"    # Z

    .prologue
    .line 193
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 194
    .local v0, "head":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 195
    .local v2, "tail":Lorg/apache/james/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v1, "out":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 198
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public final buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 7
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    .prologue
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v3, "list":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 61
    iget-object v4, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/parser/Node;

    aget-object v1, v4, v2

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 62
    .local v1, "childNode":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    new-instance v5, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v5, v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v4

    instance-of v6, v4, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v6, :cond_0

    check-cast v4, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    .line 63
    .local v0, "address":Lorg/apache/james/mime4j/field/address/Address;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "address":Lorg/apache/james/mime4j/field/address/Address;
    :cond_0
    instance-of v6, v4, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v6, :cond_1

    check-cast v4, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v6, v4, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v6, :cond_4

    check-cast v4, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v4

    instance-of v5, v4, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v5, :cond_2

    new-instance v0, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v4, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v5, :cond_3

    invoke-static {v6}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v4, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 65
    .end local v1    # "childNode":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :cond_5
    new-instance v4, Lorg/apache/james/mime4j/field/address/AddressList;

    invoke-direct {v4, v3}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;)V

    return-object v4
.end method
