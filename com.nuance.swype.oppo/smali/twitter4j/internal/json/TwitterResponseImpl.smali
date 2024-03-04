.class abstract Ltwitter4j/internal/json/TwitterResponseImpl;
.super Ljava/lang/Object;
.source "TwitterResponseImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterResponse;


# static fields
.field private static final serialVersionUID:J = -0x65187b8c49dbba7bL


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->accessLevel:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 43
    invoke-static {p1}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 44
    invoke-static {p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->accessLevel:I

    .line 45
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/internal/json/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
