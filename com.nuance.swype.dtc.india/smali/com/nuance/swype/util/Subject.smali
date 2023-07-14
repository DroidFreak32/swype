.class public final Lcom/nuance/swype/util/Subject;
.super Ljava/lang/Object;
.source "Subject.java"


# instance fields
.field private final observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/util/Subject;->observers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/nuance/swype/util/Subject;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public final doNotify()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/util/Subject;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/util/Observer;

    .line 19
    invoke-interface {v0}, Lcom/nuance/swype/util/Observer;->update()V

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final removeObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/util/Subject;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
