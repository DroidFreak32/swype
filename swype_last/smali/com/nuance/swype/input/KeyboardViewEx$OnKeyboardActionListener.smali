.class public interface abstract Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardActionListener"
.end annotation


# virtual methods
.method public abstract onDoublePress(I)V
.end method

.method public abstract onHardwareCharKey(I[I)V
.end method

.method public abstract onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
.end method

.method public abstract onMultitapTimeout()V
.end method

.method public abstract onPress(I)V
.end method

.method public abstract onRelease(I)V
.end method

.method public abstract onText(Ljava/lang/CharSequence;J)V
.end method

.method public abstract onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
.end method

.method public abstract onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
.end method

.method public abstract onWrite(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft()V
.end method

.method public abstract swipeRight()V
.end method

.method public abstract swipeUp()V
.end method
