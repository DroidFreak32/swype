.class public final Lorg/apache/james/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "addresses"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private get(I)Lorg/apache/james/mime4j/field/address/Address;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Address;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 3
    .param p0, "rawAddressList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 115
    .local v0, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-static {}, Lorg/apache/james/mime4j/field/address/Builder;->getInstance()Lorg/apache/james/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final flatten()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 6

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "groupDetected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 73
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v3, :cond_1

    .line 74
    const/4 v0, 0x1

    .line 79
    :cond_0
    if-nez v0, :cond_2

    .line 80
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 90
    :goto_1
    return-object v3

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "results":Ljava/util/ArrayList;
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 84
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressList;->get(I)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_3
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method
