.class public Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GmailCompat"
.end annotation


# static fields
.field private static final ANDROID_HTTP_TRANSPORT_CLASS:Ljava/lang/String; = "com.google.api.client.extensions.android.http.AndroidHttp"

.field private static final GMAIL_BUILDER_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail$Builder"

.field private static final GMAIL_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail"

.field private static final GMAIL_MESSAGE_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.model.Message"

.field private static final GMAIL_MESSAGE_PART:Ljava/lang/String; = "com.google.api.services.gmail.model.MessagePart"

.field private static final GMAIL_MESSAGE_PART_BODY:Ljava/lang/String; = "com.google.api.services.gmail.model.MessagePartBody"

.field private static final GMAIL_MESSAGE_PART_HEADER:Ljava/lang/String; = "com.google.api.services.gmail.model.MessagePartHeader"

.field private static final GMAIL_USERS_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail$Users"

.field private static final GMAIL_USERS_MESSAGES_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail$Users$Messages"

.field private static final GMAIL_USERS_MESSAGES_GET_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail$Users$Messages$Get"

.field private static final GMAIL_USERS_MESSAGES_LIST_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.Gmail$Users$Messages$List"

.field private static final GOOGLE_CREDENTIAL_CLASS:Ljava/lang/String; = "com.google.api.client.googleapis.auth.oauth2.GoogleCredential"

.field private static final HTTP_REQUEST_INITIALIZER_CLASS:Ljava/lang/String; = "com.google.api.client.http.HttpRequestInitializer"

.field private static final HTTP_TRANSPORT_CLASS:Ljava/lang/String; = "com.google.api.client.http.HttpTransport"

.field private static final JACKSON_CLASS:Ljava/lang/String; = "com.google.api.client.json.jackson2.JacksonFactory"

.field private static final JSON_CLASS:Ljava/lang/String; = "com.google.api.client.json.JsonFactory"

.field private static final LIST_MESSAGES_RESPONSE_CLASS:Ljava/lang/String; = "com.google.api.services.gmail.model.ListMessagesResponse"

.field private static final OR:Ljava/lang/String; = " OR "


# instance fields
.field HttpRequestInitializerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field HttpTransportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field JsonClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private accountToken:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private credential:Ljava/lang/Object;

.field private gmailAccount:Ljava/lang/String;

.field private gmailBuilder:Ljava/lang/Object;

.field private gmailService:Ljava/lang/Object;

.field private httpTransport:Ljava/lang/Object;

.field private jsonFactory:Ljava/lang/Object;

.field private lastScan:Ljava/util/Calendar;

.field private maxCount:I

.field private final scanContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.google.api.client.json.JsonFactory"

    invoke-static {v0}, Lcom/nuance/connect/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->JsonClass:Ljava/lang/Class;

    const-string/jumbo v0, "com.google.api.client.http.HttpTransport"

    invoke-static {v0}, Lcom/nuance/connect/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->HttpTransportClass:Ljava/lang/Class;

    const-string/jumbo v0, "com.google.api.client.http.HttpRequestInitializer"

    invoke-static {v0}, Lcom/nuance/connect/compat/CompatUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->HttpRequestInitializerClass:Ljava/lang/Class;

    const-string/jumbo v0, "me"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailAccount:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->maxCount:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->accountToken:Ljava/lang/String;

    const-string/jumbo v0, "SCSDK-GMail-Scanner/2.0"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->applicationName:Ljava/lang/String;

    const-string/jumbo v0, "com.google.api.client.json.jackson2.JacksonFactory"

    const-string/jumbo v1, "getDefaultInstance"

    invoke-static {v0, v1, v6}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->jsonFactory:Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.client.extensions.android.http.AndroidHttp"

    const-string/jumbo v1, "newCompatibleTransport"

    invoke-static {v0, v1, v6}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0, v6, v6}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->httpTransport:Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.client.googleapis.auth.oauth2.GoogleCredential"

    invoke-static {v0}, Lcom/nuance/connect/compat/CompatUtil;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->credential:Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.client.googleapis.auth.oauth2.GoogleCredential"

    const-string/jumbo v1, "setAccessToken"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->credential:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->accountToken:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Builder"

    new-array v1, v8, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->HttpTransportClass:Ljava/lang/Class;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->JsonClass:Ljava/lang/Class;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->HttpRequestInitializerClass:Ljava/lang/Class;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/nuance/connect/compat/CompatUtil;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->httpTransport:Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->jsonFactory:Ljava/lang/Object;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->credential:Ljava/lang/Object;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/nuance/connect/compat/CompatUtil;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailBuilder:Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Builder"

    const-string/jumbo v1, "setApplicationName"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailBuilder:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->applicationName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Builder"

    const-string/jumbo v1, "build"

    invoke-static {v0, v1, v6}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailBuilder:Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailService:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->readMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setGmailAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setLastScan(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setScanTypes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setScanContentTypes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setApplicationName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setMaxCount(I)V

    return-void
.end method

.method private buildQueryString(Ljava/util/List;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->access$700(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "in:("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd H:m:s ZZZZ"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractPlainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getMessage(Ljava/lang/String;Ljava/lang/Object;)Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$1;)V

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Users$Messages"

    const-string/jumbo v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages$Get"

    const-string/jumbo v3, "execute"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailAccount:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, p2, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "com.google.api.services.gmail.model.Message"

    const-string/jumbo v3, "getPayload"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v0, "com.google.api.services.gmail.model.MessagePart"

    const-string/jumbo v3, "getHeaders"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string/jumbo v3, "com.google.api.services.gmail.model.MessagePartHeader"

    const-string/jumbo v4, "getName"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string/jumbo v4, "com.google.api.services.gmail.model.MessagePartHeader"

    const-string/jumbo v5, "getValue"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string/jumbo v5, "com.google.api.services.gmail.model.MessagePart"

    const-string/jumbo v6, "getParts"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string/jumbo v6, "com.google.api.services.gmail.model.MessagePart"

    const-string/jumbo v7, "containsKey"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string/jumbo v7, "com.google.api.services.gmail.model.MessagePart"

    const-string/jumbo v8, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string/jumbo v8, "com.google.api.services.gmail.model.MessagePart"

    const-string/jumbo v9, "getBody"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string/jumbo v9, "com.google.api.services.gmail.model.MessagePartBody"

    const-string/jumbo v10, "decodeData"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v2, v10}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    const/4 v0, 0x0

    invoke-static {v3, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v12, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-static {v12}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->access$900(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v4, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v12, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-static {v12}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->access$900(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v4, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->extractPlainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    invoke-static {v3, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v12, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-static {v12}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->access$900(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {v4, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->extractPlainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    invoke-static {v3, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v12, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-static {v12}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->access$900(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v4, v11, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->extractPlainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {v5, v2, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "mimeType"

    aput-object v5, v0, v4

    invoke-static {v6, v3, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "mimeType"

    aput-object v5, v0, v4

    invoke-static {v7, v3, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v8, v3, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    invoke-static {v9, v0, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private readMessages()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->lastScan:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->buildQueryString(Ljava/util/List;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.google.api.services.gmail.Gmail"

    const-string/jumbo v2, "users"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailService:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users"

    const-string/jumbo v3, "messages"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v1, "com.google.api.services.gmail.Gmail$Users$Messages"

    const-string/jumbo v2, "list"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailAccount:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v3, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v1, "com.google.api.services.gmail.Gmail$Users$Messages$List"

    const-string/jumbo v2, "setQ"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v1, v4, v2}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Users$Messages$List"

    const-string/jumbo v1, "execute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {v5, v4, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "com.google.api.services.gmail.model.ListMessagesResponse"

    const-string/jumbo v2, "getMessages"

    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string/jumbo v0, "com.google.api.services.gmail.model.Message"

    const-string/jumbo v2, "getId"

    const/4 v8, 0x0

    invoke-static {v0, v2, v8}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string/jumbo v0, "com.google.api.services.gmail.model.ListMessagesResponse"

    const-string/jumbo v2, "getNextPageToken"

    const/4 v9, 0x0

    invoke-static {v0, v2, v9}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string/jumbo v0, "com.google.api.services.gmail.Gmail$Users$Messages$List"

    const-string/jumbo v2, "setPageToken"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v0, v2, v10}, Lcom/nuance/connect/compat/CompatUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v0, 0x0

    invoke-static {v7, v1, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v1

    move-object v1, v0

    :cond_0
    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v11, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->maxCount:I

    if-ge v0, v11, :cond_8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v8, v0, v12}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->getMessage(Ljava/lang/String;Ljava/lang/Object;)Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;

    move-result-object v0

    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v13, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    if-nez v12, :cond_6

    :cond_2
    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v13, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    if-nez v12, :cond_6

    :cond_3
    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v13, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    if-nez v12, :cond_6

    :cond_4
    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v13, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    if-nez v12, :cond_6

    :cond_5
    iget-object v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v13, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    if-eqz v12, :cond_1

    :cond_6
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v12, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->maxCount:I

    if-lt v0, v12, :cond_1

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v11, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->maxCount:I

    if-ge v0, v11, :cond_0

    const/4 v0, 0x0

    invoke-static {v9, v2, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v10, v4, v1}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v5, v4, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v7, v1, v0}, Lcom/nuance/connect/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_8
    return-object v6
.end method

.method private setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->applicationName:Ljava/lang/String;

    return-void
.end method

.method private setGmailAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailAccount:Ljava/lang/String;

    return-void
.end method

.method private setLastScan(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->lastScan:Ljava/util/Calendar;

    return-void
.end method

.method private setMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->maxCount:I

    return-void
.end method

.method private setScanContentTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private setScanTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method getGmailService()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->gmailService:Ljava/lang/Object;

    return-object v0
.end method
