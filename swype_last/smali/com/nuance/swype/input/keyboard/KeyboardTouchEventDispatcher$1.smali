.class final Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFlingDown()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 746
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFlingDown()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 747
    return v3
.end method

.method public final onFlingLeft()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 728
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFlingLeft()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 729
    return v3
.end method

.method public final onFlingRight()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 734
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFlingRight()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 735
    return v3
.end method

.method public final onFlingUp()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 740
    sget-object v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFlingUp()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 741
    return v3
.end method
