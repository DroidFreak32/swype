.class public Lcom/fsck/k9/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

.field private static final TOO_MANY_ADDRESSES:I = 0x32


# instance fields
.field mAddress:Ljava/lang/String;

.field mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    sput-object v0, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 52
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 p2, 0x0

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 60
    :cond_1
    iput-object p2, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static pack([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 7
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 381
    const/4 v5, 0x0

    .line 401
    :goto_0
    return-object v5

    .line 383
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, p0

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 386
    aget-object v0, p0, v2

    .line 387
    .local v0, "address":Lcom/fsck/k9/mail/Address;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "personal":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 391
    const-string v5, ";\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_2

    .line 398
    const-string v5, ",\u0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "address":Lcom/fsck/k9/mail/Address;
    .end local v3    # "personal":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 11
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Address;>;"
    if-nez p0, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 136
    sget-object v8, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    .line 166
    :goto_0
    return-object v8

    .line 140
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v7

    .line 141
    .local v7, "parsedList":Lorg/apache/james/mime4j/field/address/MailboxList;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v8, v7, Lorg/apache/james/mime4j/field/address/MailboxList;->mailboxes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 143
    invoke-virtual {v7, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    .line 144
    .local v1, "address":Lorg/apache/james/mime4j/field/address/Address;
    instance-of v8, v1, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    if-eqz v8, :cond_1

    .line 146
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    move-object v6, v0

    .line 147
    .local v6, "namedMailbox":Lorg/apache/james/mime4j/field/address/NamedMailbox;
    new-instance v8, Lcom/fsck/k9/mail/Address;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lorg/apache/james/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v6    # "namedMailbox":Lorg/apache/james/mime4j/field/address/NamedMailbox;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    :cond_1
    instance-of v8, v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-eqz v8, :cond_3

    .line 152
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/field/address/Mailbox;

    move-object v5, v0

    .line 153
    .local v5, "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    new-instance v8, Lcom/fsck/k9/mail/Address;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v5, Lorg/apache/james/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lorg/apache/james/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    .end local v1    # "address":Lorg/apache/james/mime4j/field/address/Address;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "mailbox":Lorg/apache/james/mime4j/field/address/Mailbox;
    .end local v7    # "parsedList":Lorg/apache/james/mime4j/field/address/MailboxList;
    :catch_0
    move-exception v8

    .line 166
    :cond_2
    sget-object v8, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/fsck/k9/mail/Address;

    goto :goto_0

    .line 157
    .restart local v1    # "address":Lorg/apache/james/mime4j/field/address/Address;
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v7    # "parsedList":Lorg/apache/james/mime4j/field/address/MailboxList;
    :cond_3
    :try_start_1
    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown address type from Mime4J: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 9
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Address;>;"
    if-eqz p0, :cond_1

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 110
    .local v2, "arr$":[Landroid/text/util/Rfc822Token;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 112
    .local v5, "token":Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    new-instance v6, Lcom/fsck/k9/mail/Address;

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "arr$":[Landroid/text/util/Rfc822Token;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "token":Landroid/text/util/Rfc822Token;
    :cond_1
    sget-object v6, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fsck/k9/mail/Address;

    return-object v6
.end method

.method public static toEncodedString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 243
    :goto_0
    return-object v2

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 237
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 240
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toFriendly([Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/Address;->toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/fsck/k9/mail/Address;Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;
    .param p1, "contacts"    # Lcom/fsck/k9/helper/Contacts;

    .prologue
    .line 305
    if-nez p0, :cond_1

    .line 307
    const/4 v1, 0x0

    .line 325
    :cond_0
    return-object v1

    .line 310
    :cond_1
    array-length v2, p0

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    .line 313
    const/4 p1, 0x0

    .line 316
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 317
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 319
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/Address;->toFriendly(Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 320
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 322
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 317
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toString([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    .line 200
    if-nez p0, :cond_0

    .line 202
    const/4 v2, 0x0

    .line 213
    :goto_0
    return-object v2

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 207
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 210
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;
    .locals 9
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 335
    if-nez p0, :cond_0

    .line 337
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/fsck/k9/mail/Address;

    .line 366
    :goto_0
    return-object v7

    .line 339
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 341
    .local v3, "length":I
    const/4 v5, 0x0

    .line 342
    .local v5, "pairStartIndex":I
    const/4 v4, 0x0

    .line 343
    .local v4, "pairEndIndex":I
    const/4 v1, 0x0

    .line 344
    .local v1, "addressEndIndex":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 346
    const-string v7, ",\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 347
    if-ne v4, v8, :cond_1

    .line 349
    move v4, v3

    .line 351
    :cond_1
    const-string v7, ";\u0000"

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 352
    const/4 v6, 0x0

    .line 354
    .local v6, "personal":Ljava/lang/String;
    if-eq v1, v8, :cond_2

    if-le v1, v4, :cond_3

    .line 356
    :cond_2
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "address":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/fsck/k9/mail/Address;

    invoke-direct {v7, v0, v6}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v5, v4, 0x2

    .line 365
    goto :goto_1

    .line 360
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 361
    .restart local v0    # "address":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 366
    .end local v0    # "address":Ljava/lang/String;
    .end local v6    # "personal":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/fsck/k9/mail/Address;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fsck/k9/mail/Address;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 172
    instance-of v0, p1, Lcom/fsck/k9/mail/Address;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/fsck/k9/mail/Address;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "personal"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 p1, 0x0

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toFriendly()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/Address;->toFriendly(Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toFriendly(Lcom/fsck/k9/helper/Contacts;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "contacts"    # Lcom/fsck/k9/helper/Contacts;

    .prologue
    .line 270
    if-eqz p1, :cond_1

    .line 272
    iget-object v2, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fsck/k9/helper/Contacts;->getNameForAddress$16915f7f()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/fsck/k9/K9;->changeContactNameColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    .local v0, "coloredName":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/fsck/k9/K9;->getContactNameColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 295
    .end local v0    # "coloredName":Landroid/text/SpannableString;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    .line 290
    goto :goto_0

    .line 295
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/fsck/k9/helper/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
