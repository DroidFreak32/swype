.class public final Lcom/fsck/k9/mail/store/TrustManagerFactory;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/TrustManagerFactory$1;,
        Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;,
        Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TrustManagerFactory"

.field private static defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private static keyStore:Ljava/security/KeyStore;

.field private static keyStoreFile:Ljava/io/File;

.field private static lastCertChain:[Ljava/security/cert/X509Certificate;

.field private static localTrustManager:Ljavax/net/ssl/X509TrustManager;

.field private static unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 31
    sput-object v13, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;

    .line 131
    :try_start_0
    const-string v9, "X509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 132
    .local v7, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 133
    .local v0, "app":Landroid/app/Application;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KeyStore"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "KeyStore.bks"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;

    .line 134
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    sput-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4

    .line 138
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_4

    .line 146
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    const-string v10, ""

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4

    .line 161
    :goto_1
    :try_start_3
    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v7, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 162
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    .line 163
    .local v8, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v8, :cond_0

    .line 165
    move-object v1, v8

    .local v1, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v5, v8

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 167
    .local v6, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v9, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_2

    .line 169
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v6, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 174
    .end local v1    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    const-string v9, "X509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 175
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 176
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    .line 177
    if-eqz v8, :cond_1

    .line 179
    move-object v1, v8

    .restart local v1    # "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v5, v8

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 181
    .restart local v6    # "tm":Ljavax/net/ssl/TrustManager;
    instance-of v9, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_3

    .line 183
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v6, Lcom/fsck/k9/mail/store/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_4

    .line 198
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_1
    :goto_4
    new-instance v9, Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;

    invoke-direct {v9, v13}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SimpleX509TrustManager;-><init>(Lcom/fsck/k9/mail/store/TrustManagerFactory$1;)V

    sput-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 199
    return-void

    .line 142
    .restart local v0    # "app":Landroid/app/Application;
    :catch_0
    move-exception v9

    const/4 v3, 0x0

    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 151
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "TrustManagerFactory"

    const-string v10, "KeyStore IOException while initializing TrustManagerFactory "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v9, 0x0

    sput-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 190
    .end local v0    # "app":Landroid/app/Application;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 192
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "TrustManagerFactory"

    const-string v10, "Unable to get X509 Trust Manager "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 156
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "app":Landroid/app/Application;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 158
    .local v2, "e":Ljava/security/cert/CertificateException;
    :try_start_5
    const-string v9, "TrustManagerFactory"

    const-string v10, "KeyStore CertificateException while initializing TrustManagerFactory "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 v9, 0x0

    sput-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 194
    .end local v0    # "app":Landroid/app/Application;
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .line 196
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v9, "TrustManagerFactory"

    const-string v10, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 165
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "app":Landroid/app/Application;
    .restart local v1    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 179
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method static synthetic access$000()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method static synthetic access$100()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public static addCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    const-string v9, "X509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 230
    .local v7, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    move-object v0, p1

    .local v0, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v5, p1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 232
    .local v2, "element":Ljava/security/cert/X509Certificate;
    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "element":Ljava/security/cert/X509Certificate;
    :cond_0
    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v7, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 237
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    .line 238
    .local v8, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v8, :cond_1

    .line 240
    move-object v0, v8

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v5, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 242
    .local v6, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v9, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_2

    .line 244
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v6, Lcom/fsck/k9/mail/store/TrustManagerFactory;->localTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3

    .line 252
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStoreFile:Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    .local v4, "keyStoreStream":Ljava/io/FileOutputStream;
    sget-object v9, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    const-string v10, ""

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 254
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3

    .line 278
    .end local v3    # "i$":I
    .end local v4    # "keyStoreStream":Ljava/io/FileOutputStream;
    .end local v5    # "len$":I
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :goto_2
    return-void

    .line 240
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v6    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to write KeyStore: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3

    .line 277
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_1
    move-exception v1

    .line 272
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "TrustManagerFactory"

    const-string v10, "Unable to get X509 Trust Manager "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 260
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_2
    move-exception v1

    .line 262
    .local v1, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to write KeyStore: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3

    .line 274
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_3
    move-exception v1

    .line 276
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v9, "TrustManagerFactory"

    const-string v10, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 264
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v8    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_4
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to write KeyStore: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_3
.end method

.method public static get(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/fsck/k9/mail/store/TrustManagerFactory$SecureX509TrustManager;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->unsecureTrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_0
.end method

.method public static getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public static getLastCertChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static setLastCertChain([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 218
    sput-object p0, Lcom/fsck/k9/mail/store/TrustManagerFactory;->lastCertChain:[Ljava/security/cert/X509Certificate;

    .line 219
    return-void
.end method
