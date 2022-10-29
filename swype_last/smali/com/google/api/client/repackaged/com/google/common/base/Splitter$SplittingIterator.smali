.class abstract Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "splitter"    # Lcom/google/api/client/repackaged/com/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;-><init>()V

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 1103
    iget-object v0, p1, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 544
    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 2103
    iget-boolean v0, p1, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->omitEmptyStrings:Z

    .line 545
    iput-boolean v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 3103
    iget v0, p1, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->limit:I

    .line 546
    iput v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 547
    iput-object p2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 548
    return-void
.end method


# virtual methods
.method protected final bridge synthetic computeNext()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 522
    .line 3557
    iget v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 3558
    :cond_3
    :goto_3
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v1, v5, :cond_9b

    .line 3562
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 3563
    if-ne v1, v5, :cond_2e

    .line 3564
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3565
    iput v5, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 3570
    :goto_17
    iget v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    if-ne v2, v0, :cond_a3

    .line 3578
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 3579
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    iget-object v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 3580
    iput v5, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_3

    .line 3568
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v2

    iput v2, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_17

    .line 3585
    :goto_35
    if-ge v2, v1, :cond_a1

    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3586
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 3588
    :goto_49
    if-le v0, v2, :cond_5f

    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 3589
    add-int/lit8 v1, v0, -0x1

    move v0, v1

    goto :goto_49

    .line 3592
    :cond_5f
    iget-boolean v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v1, :cond_68

    if-ne v2, v0, :cond_68

    .line 3594
    iget v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_3

    .line 3598
    :cond_68
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8a

    .line 3602
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3603
    iput v5, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 3605
    :goto_75
    if-le v0, v2, :cond_90

    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 3606
    add-int/lit8 v0, v0, -0x1

    goto :goto_75

    .line 3609
    :cond_8a
    iget v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 3612
    :cond_90
    iget-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9a
    return-object v0

    .line 4045
    :cond_9b
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->DONE:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    .line 3614
    const/4 v0, 0x0

    .line 522
    goto :goto_9a

    :cond_a1
    move v0, v1

    goto :goto_49

    :cond_a3
    move v2, v0

    goto :goto_35
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
