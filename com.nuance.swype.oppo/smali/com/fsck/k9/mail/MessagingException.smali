.class public Lcom/fsck/k9/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field permanentFailure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 18
    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 29
    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 30
    return-void
.end method


# virtual methods
.method public isPermanentFailure()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return v0
.end method

.method public setPermanentFailure(Z)V
    .locals 0
    .param p1, "permanentFailure"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 40
    return-void
.end method
