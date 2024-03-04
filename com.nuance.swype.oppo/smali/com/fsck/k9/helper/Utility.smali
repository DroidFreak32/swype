.class public final Lcom/fsck/k9/helper/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    const-string v0, "((Re|Fw|Fwd|Aw|R\\u00E9f\\.)(\\[\\d+\\])?[\\u00A0 ]?: *)+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "\\[[-_a-z0-9]+\\] "

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    return-void
.end method

.method public static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, p0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const/4 v3, 0x1

    .line 62
    :goto_1
    return v3

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    .line 98
    :cond_0
    new-instance v1, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v1}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/filter/Base64;->decode([B)[B

    move-result-object v0

    .line 99
    .local v0, "decoded":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 109
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 108
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/fsck/k9/mail/filter/Base64;

    invoke-direct {v1}, Lcom/fsck/k9/mail/filter/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/filter/Base64;->encode([B)[B

    move-result-object v0

    .line 109
    .local v0, "encoded":[B
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "seperator"    # C

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 89
    :goto_0
    return-object v2

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 83
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x9

    .line 183
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 185
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 186
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v2, v0

    .local v2, "count":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 188
    aget-byte v1, v0, v4

    .line 189
    .local v1, "ch":B
    const/16 v7, 0x25

    if-ne v1, v7, :cond_2

    .line 191
    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    add-int/lit8 v3, v7, -0x30

    .line 192
    .local v3, "h":I
    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v0, v7

    add-int/lit8 v5, v7, -0x30

    .line 193
    .local v5, "l":I
    if-le v3, v8, :cond_0

    .line 195
    add-int/lit8 v3, v3, -0x7

    .line 197
    :cond_0
    if-le v5, v8, :cond_1

    .line 199
    add-int/lit8 v5, v5, -0x7

    .line 201
    :cond_1
    shl-int/lit8 v7, v3, 0x4

    or-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 202
    add-int/lit8 v4, v4, 0x2

    .line 212
    .end local v3    # "h":I
    .end local v5    # "l":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    :cond_2
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_3

    .line 206
    const/16 v7, 0x20

    aput-byte v7, v0, v6

    goto :goto_1

    .line 218
    .end local v0    # "bytes":[B
    .end local v1    # "ch":B
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "length":I
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    :goto_2
    return-object v7

    .line 210
    .restart local v0    # "bytes":[B
    .restart local v1    # "ch":B
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "length":I
    :cond_3
    aget-byte v7, v0, v4

    aput-byte v7, v0, v6

    goto :goto_1

    .line 214
    .end local v1    # "ch":B
    :cond_4
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v0, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private static move(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 537
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 539
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 541
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 545
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 546
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 547
    .local v4, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 548
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 549
    .local v1, "count":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    .line 551
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cannot move "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v5

    .line 553
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 554
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 555
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static moveRecursive(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "fromDir"    # Ljava/io/File;
    .param p1, "toDir"    # Ljava/io/File;

    .prologue
    .line 572
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3

    .line 578
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 580
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 582
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot delete already existing file/directory "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_2
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 587
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot rename "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - moving instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {p0, p1}, Lcom/fsck/k9/helper/Utility;->move(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_6

    .line 594
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 596
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 598
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_6

    .line 600
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot create directory "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 604
    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 606
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 608
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/fsck/k9/helper/Utility;->moveRecursive(Ljava/io/File;Ljava/io/File;)V

    .line 609
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 604
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 613
    :cond_8
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 614
    .local v4, "target":Ljava/io/File;
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 616
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot rename "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - moving instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v1, v4}, Lcom/fsck/k9/helper/Utility;->move(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_2

    .line 621
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "target":Ljava/io/File;
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 623
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot delete "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    if-nez p0, :cond_1

    .line 162
    const/4 p0, 0x0

    .line 170
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static touchFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "parentDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 512
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 528
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to touch file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
