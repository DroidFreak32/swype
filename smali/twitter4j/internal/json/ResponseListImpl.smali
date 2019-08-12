.class Ltwitter4j/internal/json/ResponseListImpl;
.super Ljava/util/ArrayList;
.source "ResponseListImpl.java"

# interfaces
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ltwitter4j/ResponseList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e5cd1029e2727a0L


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 40
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 41
    invoke-direct {p0, p2}, Ltwitter4j/internal/json/ResponseListImpl;->init(Ltwitter4j/internal/http/HttpResponse;)V

    .line 42
    return-void
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 1
    .param p1, "rateLimitStatus"    # Ltwitter4j/RateLimitStatus;
    .param p2, "accessLevel"    # I

    .prologue
    .line 45
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 46
    iput-object p1, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 47
    iput p2, p0, Ltwitter4j/internal/json/ResponseListImpl;->accessLevel:I

    .line 48
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 35
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 36
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/ResponseListImpl;->init(Ltwitter4j/internal/http/HttpResponse;)V

    .line 37
    return-void
.end method

.method private init(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 51
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    invoke-static {p1}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 52
    invoke-static {p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->accessLevel:I

    .line 53
    return-void
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    iget v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->accessLevel:I

    return v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Ltwitter4j/internal/json/ResponseListImpl;, "Ltwitter4j/internal/json/ResponseListImpl<TT;>;"
    iget-object v0, p0, Ltwitter4j/internal/json/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
