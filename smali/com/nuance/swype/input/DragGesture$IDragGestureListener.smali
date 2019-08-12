.class public interface abstract Lcom/nuance/swype/input/DragGesture$IDragGestureListener;
.super Ljava/lang/Object;
.source "DragGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/DragGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDragGestureListener"
.end annotation


# virtual methods
.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onDrag(Landroid/view/View;II)V
.end method

.method public abstract onEndDrag(Landroid/view/View;)V
.end method
