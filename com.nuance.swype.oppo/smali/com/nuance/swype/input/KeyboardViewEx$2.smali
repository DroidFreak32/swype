.class Lcom/nuance/swype/input/KeyboardViewEx$2;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Lcom/nuance/swype/input/TwoFingersGestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/KeyboardViewEx;->initGestureDetector(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureDown()V
    .locals 2

    .prologue
    .line 1241
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureDown"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1242
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->swipeDown()V

    .line 1243
    return-void
.end method

.method public onGestureHorizonalPinch(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "positionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "postionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 1246
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureHorizonalPinch XXX"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1247
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->horizontalPinch(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1248
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 1250
    return-void
.end method

.method public onGestureHorizontalSpread(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "positionOfFinger1"    # Landroid/graphics/Point;
    .param p2, "postionOfFinger2"    # Landroid/graphics/Point;

    .prologue
    .line 1253
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureHorizontalSpread XXX"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1254
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;->horizontalSpread(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1255
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyboardState()V

    .line 1256
    return-void
.end method

.method public onGestureLeft()V
    .locals 2

    .prologue
    .line 1236
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureLeft"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollLeft()V

    .line 1238
    return-void
.end method

.method public onGestureRight()V
    .locals 2

    .prologue
    .line 1231
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureRight"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1232
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$2;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrollRight()V

    .line 1233
    return-void
.end method

.method public onGestureUp()V
    .locals 2

    .prologue
    .line 1227
    sget-object v0, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onGestureUp"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1228
    return-void
.end method
