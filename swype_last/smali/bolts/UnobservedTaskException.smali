.class public Lbolts/UnobservedTaskException;
.super Ljava/lang/RuntimeException;
.source "UnobservedTaskException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method
