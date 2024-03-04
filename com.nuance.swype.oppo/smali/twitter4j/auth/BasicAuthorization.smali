.class public Ltwitter4j/auth/BasicAuthorization;
.super Ljava/lang/Object;
.source "BasicAuthorization.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/Authorization;


# static fields
.field private static final serialVersionUID:J = -0x5156d367cd47ef54L


# instance fields
.field private basic:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ltwitter4j/auth/BasicAuthorization;->encodeBasicAuthenticationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private encodeBasicAuthenticationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Basic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 74
    :goto_0
    return v1

    .line 70
    :cond_0
    instance-of v1, p1, Ltwitter4j/auth/BasicAuthorization;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Ltwitter4j/auth/BasicAuthorization;

    .line 74
    .local v0, "that":Ltwitter4j/auth/BasicAuthorization;
    iget-object v1, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    iget-object v2, v0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/auth/BasicAuthorization;->basic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicAuthorization{userId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/BasicAuthorization;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password=\'**********\'\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
