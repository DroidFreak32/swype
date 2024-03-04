.class public final Lcom/fsck/k9/helper/DomainNameChecker;
.super Ljava/lang/Object;
.source "DomainNameChecker.java"


# static fields
.field private static QUICK_IP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    const-string v0, "^[a-f0-9\\.:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fsck/k9/helper/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 102
    :cond_1
    :goto_0
    return v1

    .line 83
    :cond_2
    :try_start_0
    sget-object v2, Lcom/fsck/k9/helper/DomainNameChecker;->QUICK_IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 84
    .local v1, "rval":Z
    if-eqz v1, :cond_1

    .line 85
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 88
    .end local v1    # "rval":Z
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 91
    const-string v0, "unknown host exception"

    .line 94
    :cond_3
    sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 95
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DomainNameChecker.isIpAddress(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "rval":Z
    goto :goto_0
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    .line 59
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/fsck/k9/helper/DomainNameChecker;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-static {p0, p1}, Lcom/fsck/k9/helper/DomainNameChecker;->matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {p0, p1}, Lcom/fsck/k9/helper/DomainNameChecker;->matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "thisDomain"    # Ljava/lang/String;
    .param p1, "thatDomain"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 216
    sget-boolean v8, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 217
    const-string v8, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DomainNameChecker.matchDns(): this domain: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " that domain: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    move v1, v7

    .line 262
    :cond_2
    :goto_0
    return v1

    .line 227
    :cond_3
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, "rval":Z
    if-nez v1, :cond_2

    .line 232
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "thisDomainTokens":[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "thatDomainTokens":[Ljava/lang/String;
    array-length v5, v4

    .line 236
    .local v5, "thisDomainTokensNum":I
    array-length v3, v2

    .line 239
    .local v3, "thatDomainTokensNum":I
    if-lt v5, v3, :cond_2

    .line 240
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 241
    aget-object v8, v4, v0

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 242
    if-nez v1, :cond_7

    .line 245
    if-nez v0, :cond_4

    if-ne v5, v3, :cond_4

    move v1, v6

    .line 246
    :goto_2
    if-eqz v1, :cond_2

    .line 247
    aget-object v8, v2, v7

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 248
    if-nez v1, :cond_2

    .line 251
    aget-object v8, v4, v7

    aget-object v9, v2, v7

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    const/16 v10, 0x2a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v11, v12, :cond_6

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    :goto_3
    goto :goto_0

    :cond_4
    move v1, v7

    .line 245
    goto :goto_2

    :cond_5
    move v1, v7

    .line 251
    goto :goto_3

    :cond_6
    move v1, v7

    goto :goto_3

    .line 240
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static matchDns(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 13
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 160
    const/4 v5, 0x0

    .line 162
    .local v5, "hasDns":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v8

    .line 163
    .local v8, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v8, :cond_2

    .line 164
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 165
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 166
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 167
    .local v1, "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-gt v12, v11, :cond_0

    .line 168
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 169
    .local v2, "altNameType":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v12, :cond_0

    .line 171
    const/4 v5, 0x1

    .line 172
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "altName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    invoke-static {p1, v0}, Lcom/fsck/k9/helper/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 205
    .end local v0    # "altName":Ljava/lang/String;
    .end local v1    # "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "altNameType":Ljava/lang/Integer;
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v8    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    return v9

    .line 183
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/security/cert/CertificateParsingException;
    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 190
    invoke-virtual {v3}, Ljava/security/cert/CertificateParsingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 192
    const-string v4, "failed to parse certificate"

    .line 195
    :cond_1
    const-string v9, "k9"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DomainNameChecker.matchDns(): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v3    # "e":Ljava/security/cert/CertificateParsingException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :cond_2
    if-nez v5, :cond_3

    .line 201
    new-instance v7, Landroid/net/http/SslCertificate;

    invoke-direct {v7, p0}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 202
    .local v7, "sslCertificate":Landroid/net/http/SslCertificate;
    invoke-virtual {v7}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/fsck/k9/helper/DomainNameChecker;->matchDns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_0

    .end local v7    # "sslCertificate":Landroid/net/http/SslCertificate;
    :cond_3
    move v9, v10

    .line 205
    goto :goto_0
.end method

.method private static matchIpAddress(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 10
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "thisDomain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 116
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 117
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DomainNameChecker.matchIpAddress(): this domain: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v4

    .line 122
    .local v4, "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v4, :cond_3

    .line 123
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 124
    check-cast v1, Ljava/util/List;

    .line 125
    .local v1, "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_1

    const/4 v7, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 126
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 127
    .local v2, "altNameType":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    .line 129
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "altName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 131
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 132
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "alternative IP: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    .end local v0    # "altName":Ljava/lang/String;
    .end local v1    # "altNameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "altNameType":Ljava/lang/Integer;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "subjectAltNames":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    return v5

    .line 143
    :catch_0
    move-exception v5

    :cond_3
    move v5, v6

    .line 146
    goto :goto_0
.end method
