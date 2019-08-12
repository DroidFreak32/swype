.class public interface abstract Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;
.super Ljava/lang/Object;
.source "ISelectionStrategy.java"


# virtual methods
.method public abstract addCancel()V
.end method

.method public abstract handleMove(Landroid/graphics/Point;)V
.end method

.method public abstract setChoices(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setSelectionChangeListener(Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;)V
.end method

.method public abstract setStartPoint(Landroid/graphics/Point;I)V
.end method
