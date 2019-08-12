.class public Lcom/fsck/k9/mail/store/UnavailableStorageException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "UnavailableStorageException.java"


# static fields
.field private static final serialVersionUID:J = 0x12b60208c0610878L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;Z)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 30
    return-void
.end method
