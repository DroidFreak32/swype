.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$7;
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
    .line 253
    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final indexIn(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    .local v0, "length":I
    invoke-static {p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 265
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    .end local p2    # "start":I
    :cond_0
    return p2
.end method

.method public final matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 0
    .param p1, "other"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 318
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method
