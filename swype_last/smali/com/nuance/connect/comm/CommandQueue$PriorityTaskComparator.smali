.class Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x418c184c24c42dbdL


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/comm/CommandQueue$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/comm/CommandQueue$PriorityTaskComparator;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .registers 6

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p1}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v0

    :goto_b
    instance-of v2, p2, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    if-eqz v2, :cond_15

    check-cast p2, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;

    invoke-virtual {p2}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->getPriority()I

    move-result v1

    :cond_15
    sub-int v0, v1, v0

    return v0

    :cond_18
    move v0, v1

    goto :goto_b
.end method
