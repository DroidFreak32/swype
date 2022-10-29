.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-char p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;->val$startInclusive:C

    iput-char p3, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;->val$endInclusive:C

    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 561
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;->val$startInclusive:C

    if-gt v0, p1, :cond_a

    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;->val$endInclusive:C

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
