.class Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PressHoldKey"
.end annotation


# instance fields
.field final keyIndex:I

.field final keyType:Lcom/nuance/input/swypecorelib/KeyType;

.field final repeatCount:I

.field final synthetic this$1:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 5
    .param p2, "keyIndex"    # I
    .param p3, "repeatCount"    # I
    .param p4, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->this$1:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput p2, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyIndex:I

    .line 635
    iput p3, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->repeatCount:I

    .line 636
    iput-object p4, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    .line 637
    return-void
.end method
