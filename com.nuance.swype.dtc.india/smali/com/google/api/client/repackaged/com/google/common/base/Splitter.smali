.class public final Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field final limit:I

.field final omitEmptyStrings:Z

.field private final strategy:Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;

.field final trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;


# direct methods
.method public constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;)V
    .locals 1
    .param p1, "strategy"    # Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;

    .prologue
    .line 110
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V
    .locals 1
    .param p1, "strategy"    # Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;
    .param p2, "trimmer"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->strategy:Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 117
    iput-object p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 118
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->limit:I

    .line 119
    return-void
.end method


# virtual methods
.method public final splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->strategy:Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;

    invoke-interface {v2, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;->iterator(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    .line 419
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
