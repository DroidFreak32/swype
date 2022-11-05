.class public final Lio/fabric/sdk/android/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lio/fabric/sdk/android/Logger;


# instance fields
.field private logLevel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x7

    iput v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    .line 13
    return-void
.end method

.method public constructor <init>(B)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    .line 17
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable$505cff18(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 65
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_a
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    .line 1050
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable$505cff18(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1051
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_b
    return-void
.end method

.method public final isLoggable$505cff18(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 21
    iget v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final log$6ef37c42(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    .line 96
    .line 1101
    invoke-virtual {p0, v1}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable$505cff18(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1102
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_a
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable$505cff18(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 58
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_a
    return-void
.end method
