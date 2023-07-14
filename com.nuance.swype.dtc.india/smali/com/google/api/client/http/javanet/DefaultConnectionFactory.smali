.class public Lcom/google/api/client/http/javanet/DefaultConnectionFactory;
.super Ljava/lang/Object;
.source "DefaultConnectionFactory.java"

# interfaces
.implements Lcom/google/api/client/http/javanet/ConnectionFactory;


# instance fields
.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;-><init>(Ljava/net/Proxy;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;->proxy:Ljava/net/Proxy;

    .line 27
    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;->proxy:Ljava/net/Proxy;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/javanet/DefaultConnectionFactory;->proxy:Ljava/net/Proxy;

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method
