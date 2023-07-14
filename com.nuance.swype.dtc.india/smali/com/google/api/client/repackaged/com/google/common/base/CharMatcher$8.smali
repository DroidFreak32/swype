.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$8;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final indexIn(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 340
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 341
    .local v0, "length":I
    invoke-static {p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 342
    const/4 v1, -0x1

    return v1
.end method

.method public final matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public final or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 401
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-object v0
.end method
