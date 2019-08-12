.class public Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljavax/net/ssl/SSLSocketFactory;

.field private static b:Ljavax/net/ssl/SSLContext;

.field private static c:[Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->c:[Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSocket(Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;)Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->c:[Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;

    invoke-direct {v2, p2}, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;-><init>(Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/SSLSettings;)V

    aput-object v2, v0, v1

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->b:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->c:[Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspX509TrustManager;

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->b:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/socket/ssl/NmspSSLSocketFactory;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p0, p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such algorithm exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize the client-side SSLContext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "General security exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
