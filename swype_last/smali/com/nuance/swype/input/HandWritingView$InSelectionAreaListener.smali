.class public interface abstract Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;
.super Ljava/lang/Object;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InSelectionAreaListener"
.end annotation


# virtual methods
.method public abstract getCurrentScreenMode()Z
.end method

.method public abstract isSpeechPopupShowing()Z
.end method

.method public abstract pointInSelectionArea(II)Z
.end method

.method public abstract resetArea(I)V
.end method

.method public abstract transferKeyEvent(Landroid/view/MotionEvent;)Z
.end method
