.class public Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerGmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GmailAccountCredentials"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x72df3522910e65f2L


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accessTokenSecret:Ljava/lang/String;

.field private final email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accessToken cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accessTokenSecret cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "email cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessTokenSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->email:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getEmail()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->accessTokenSecret:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GmailAccountCredentials("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
