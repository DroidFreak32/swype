.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is$2a9d1698()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 416
    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-direct {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 418
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .registers 3
    .param p1, "other"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 430
    iget-char v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_9

    .end local p1    # "other":Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    :goto_8
    return-object p1

    .restart local p1    # "other":Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    :cond_9
    invoke-super {p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;->or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object p1

    goto :goto_8
.end method
