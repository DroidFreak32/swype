.class public Ltwitter4j/internal/org/json/JSONException;
.super Ljava/lang/Exception;
.source "JSONException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Ltwitter4j/internal/org/json/JSONException;->cause:Ljava/lang/Throwable;

    .line 25
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ltwitter4j/internal/org/json/JSONException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
