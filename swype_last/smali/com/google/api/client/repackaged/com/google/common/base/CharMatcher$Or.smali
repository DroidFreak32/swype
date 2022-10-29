.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Or"
.end annotation


# instance fields
.field final first:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field final second:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V
    .registers 5
    .param p1, "a"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .param p2, "b"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Ljava/lang/String;)V
    .registers 5
    .param p1, "a"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .param p2, "b"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-direct {p0, p3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->first:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 730
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->second:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 731
    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->first:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->second:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final withToString(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 5
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;

    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->first:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;->second:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-object v0
.end method
