.class Ltwitter4j/internal/json/PagableResponseListImpl;
.super Ltwitter4j/internal/json/ResponseListImpl;
.source "PagableResponseListImpl.java"

# interfaces
.implements Ltwitter4j/PagableResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltwitter4j/internal/json/ResponseListImpl;",
        "Ltwitter4j/PagableResponseList;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x154294b63421ddc1L


# instance fields
.field private final nextCursor:J

.field private final previousCursor:J


# direct methods
.method constructor <init>(ILtwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p3, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 40
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    invoke-direct {p0, p1, p3}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 41
    const-string v0, "previous_cursor"

    invoke-static {v0, p2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->previousCursor:J

    .line 42
    const-string v0, "next_cursor"

    invoke-static {v0, p2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->nextCursor:J

    .line 43
    return-void
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 2
    .param p1, "rateLimitStatus"    # Ltwitter4j/RateLimitStatus;
    .param p2, "accessLevel"    # I

    .prologue
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(Ltwitter4j/RateLimitStatus;I)V

    .line 35
    iput-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->previousCursor:J

    .line 36
    iput-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->nextCursor:J

    .line 37
    return-void
.end method


# virtual methods
.method public getNextCursor()J
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    iget-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    iget-wide v0, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 66
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 50
    .local p0, "this":Ltwitter4j/internal/json/PagableResponseListImpl;, "Ltwitter4j/internal/json/PagableResponseListImpl<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/internal/json/PagableResponseListImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
