.class public interface abstract Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
.super Ljava/lang/Object;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWritingAction"
.end annotation


# virtual methods
.method public abstract penDown(Landroid/view/View;)V
.end method

.method public abstract penUp(Ljava/util/List;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method public abstract penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
.end method
