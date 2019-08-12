.class public Lcom/nuance/sns/facebook/FacebookApi;
.super Ljava/lang/Object;
.source "FacebookApi.java"


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static final DIALOG_BASE_URL:Ljava/lang/String; = "https://m.facebook.com/dialog/"

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field public static final FORCE_DIALOG_AUTH:I = -0x1

.field protected static final GRAPH_BASE_URL:Ljava/lang/String; = "https://graph.facebook.com/"

.field public static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static final RESTSERVER_URL:Ljava/lang/String; = "https://api.facebook.com/restserver.php"

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessToken:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessExpires:J

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessToken:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessExpires:J

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAppId:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getAccessExpires()J
    .locals 2

    .prologue
    .line 654
    iget-wide v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationUrl([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 606
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v1, "parameters":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 609
    const-string v2, "scope"

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_0
    const-string v0, "https://m.facebook.com/dialog/oauth"

    .line 613
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "redirect_uri"

    const-string v3, "fbconnect://success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v2, "type"

    const-string v3, "user_agent"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 619
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/nuance/sns/facebook/FacebookUtil;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    return-object v2
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p1}, Lcom/nuance/sns/facebook/FacebookUtil;->clearCookies(Landroid/content/Context;)V

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "auth.expireSession"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/nuance/sns/facebook/FacebookApi;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "response":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessToken(Ljava/lang/String;)V

    .line 412
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessExpires(J)V

    .line 414
    return-object v1
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/sns/facebook/FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/sns/facebook/FacebookApi;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/nuance/sns/facebook/FacebookApi;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.facebook.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/nuance/sns/facebook/FacebookUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_1
    const-string v0, "https://api.facebook.com/restserver.php"

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 675
    iput-wide p1, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessExpires:J

    .line 676
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 4
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 685
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/sns/facebook/FacebookApi;->setAccessExpires(J)V

    .line 688
    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAccessToken:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/nuance/sns/facebook/FacebookApi;->mAppId:Ljava/lang/String;

    .line 696
    return-void
.end method
