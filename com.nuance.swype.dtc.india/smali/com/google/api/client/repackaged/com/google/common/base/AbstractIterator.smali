.class abstract Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$1;,
        Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;, "Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;, "Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    sget-object v3, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkState(Z)V

    .line 52
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1063
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    .line 1064
    invoke-virtual {p0}, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    sget-object v3, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->DONE:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    if-eq v0, v3, :cond_0

    .line 1066
    sget-object v0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->READY:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    move v2, v1

    .line 1067
    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 51
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 56
    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;, "Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 77
    :cond_0
    sget-object v1, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    iput-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->state:Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator$State;

    .line 78
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 79
    .local v0, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 80
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator;, "Lcom/google/api/client/repackaged/com/google/common/base/AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
