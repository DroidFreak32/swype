.class public Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;
.super Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ImapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMailOAuthApi"
.end annotation


# static fields
.field public static final ACCESS_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthGetAccessToken"

.field public static final APP_NAME:Ljava/lang/String; = "Scanner"

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthAuthorizeToken"

.field public static final CONTACTS_SCOPE:Ljava/lang/String; = "https://www.google.com/m8/feeds/"

.field private static final DEFAULT_SERVER_ADDRESS:Ljava/lang/String; = "imap.gmail.com:993"

.field private static final DEFAULT_SERVER_PROTOCOL:Ljava/lang/String; = "+ssl+"

.field private static final GMAIL_REQUEST_URL:Ljava/lang/String; = "https://mail.google.com/mail/b/%s/imap/"

.field public static final GMAIL_SCOPE:Ljava/lang/String; = "https://mail.google.com/"

.field private static final IMAP_URI:Ljava/lang/String; = "imap%s://%s:%s@%s"

.field public static final REQUEST_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthGetRequestToken"

.field public static final USERINFO_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/userinfo.email"

.field private static final USERINFO_URL:Ljava/lang/String; = "https://www.googleapis.com/userinfo/email?alt=json"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailOAuthApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAuthAccessUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    return-object v0
.end method

.method getAuthAuthorizeUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken"

    return-object v0
.end method

.method getAuthRequestUrl()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://www.google.com/accounts/OAuthGetRequestToken?scope="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "https://mail.google.com/ https://www.google.com/m8/feeds/ https://www.googleapis.com/auth/userinfo.email"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&xoauth_displayname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Scanner"

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "https://mail.google.com/mail/b/%s/imap/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStoreUri(Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "imap%s://%s:%s@%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "+ssl+"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xoauth:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;->generateXOAuthString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "imap.gmail.com:993"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoURI(Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    const-string v1, "https://www.googleapis.com/userinfo/email?alt=json"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$MailXOAuthGenerator;->generateXOAuthString(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
