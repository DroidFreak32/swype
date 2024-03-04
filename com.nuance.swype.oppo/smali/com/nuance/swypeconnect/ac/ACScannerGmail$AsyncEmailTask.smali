.class Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncEmailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

.field private final callback:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->callback:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;-><init>(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;)V

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getUserInfoURI(Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_0
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x1000

    :try_start_2
    new-array v4, v0, [B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    if-lez v0, :cond_1

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-direct {v5, v4, v6, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "email"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v3

    const-string v4, "email: "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_3
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->callback:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;->onSuccess(Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->callback:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;->onFailure(I)V

    goto :goto_0
.end method
