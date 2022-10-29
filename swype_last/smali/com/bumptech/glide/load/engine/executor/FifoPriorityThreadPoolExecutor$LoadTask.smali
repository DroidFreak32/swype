.class final Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;
.super Ljava/util/concurrent/FutureTask;
.source "FifoPriorityThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final order:I

.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;I)V
    .registers 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p3, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 133
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/executor/Prioritized;

    if-nez v0, :cond_10

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_10
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/Prioritized;

    .end local p1    # "runnable":Ljava/lang/Runnable;
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/executor/Prioritized;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    .line 138
    iput p3, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    .line 139
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    check-cast p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    .line 1160
    .end local p1    # "x0":Ljava/lang/Object;
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    sub-int/2addr v0, v1

    .line 1161
    if-nez v0, :cond_e

    .line 1162
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    sub-int/2addr v0, v1

    .line 127
    :cond_e
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    const/4 v1, 0x0

    .line 144
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    if-eqz v2, :cond_15

    move-object v0, p1

    .line 145
    check-cast v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;

    .line 146
    .local v0, "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    if-ne v2, v3, :cond_15

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    .line 148
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<Ljava/lang/Object;>;"
    :cond_15
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 153
    .local p0, "this":Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;, "Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask<TT;>;"
    iget v0, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->priority:I

    .line 154
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor$LoadTask;->order:I

    add-int/2addr v1, v2

    .line 155
    return v1
.end method
