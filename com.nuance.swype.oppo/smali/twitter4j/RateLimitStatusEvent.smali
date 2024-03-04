.class public final Ltwitter4j/RateLimitStatusEvent;
.super Ljava/util/EventObject;
.source "RateLimitStatusEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x205ebb6ed80018d2L


# instance fields
.field private isAccountRateLimitStatus:Z

.field private rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "rateLimitStatus"    # Ltwitter4j/RateLimitStatus;
    .param p3, "isAccountRateLimitStatus"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object p2, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 35
    iput-boolean p3, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public final isAccountRateLimitStatus()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    return v0
.end method

.method public final isIPRateLimitStatus()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
