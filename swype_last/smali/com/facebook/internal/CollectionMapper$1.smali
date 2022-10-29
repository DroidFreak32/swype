.class final Lcom/facebook/internal/CollectionMapper$1;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$didReturnError:Lcom/facebook/internal/Mutable;

.field final synthetic val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$pendingJobCount:Lcom/facebook/internal/Mutable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    :cond_c
    :goto_c
    return-void

    .line 47
    :cond_d
    iget-object v1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    .line 48
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    goto :goto_c
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 59
    :goto_c
    return-void

    .line 57
    :cond_d
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_c
.end method
