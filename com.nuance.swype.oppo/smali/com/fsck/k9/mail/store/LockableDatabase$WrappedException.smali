.class public Lcom/fsck/k9/mail/store/LockableDatabase$WrappedException;
.super Ljava/lang/RuntimeException;
.source "LockableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LockableDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7194e7bf848960c9L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method
