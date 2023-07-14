.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "rangeStarts"    # [C
    .param p3, "rangeEnds"    # [C

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 108
    iput-object p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 109
    iput-object p3, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 110
    array-length v1, p2

    array-length v4, p3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 112
    aget-char v1, p2, v0

    aget-char v4, p3, v0

    if-gt v1, v4, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 113
    add-int/lit8 v1, v0, 0x1

    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 114
    aget-char v1, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v1, v4, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    move v1, v3

    .line 110
    goto :goto_0

    .restart local v0    # "i":I
    :cond_2
    move v1, v3

    .line 112
    goto :goto_2

    :cond_3
    move v1, v3

    .line 114
    goto :goto_3

    .line 117
    :cond_4
    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 122
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 126
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v2, v2, v0

    if-le p1, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
