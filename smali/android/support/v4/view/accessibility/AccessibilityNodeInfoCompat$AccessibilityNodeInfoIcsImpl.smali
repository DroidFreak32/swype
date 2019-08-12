.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final addAction(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # I

    .prologue
    .line 444
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 445
    return-void
.end method

.method public final addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 449
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public final getActions(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 459
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public final getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 464
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 465
    return-void
.end method

.method public final getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 469
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 470
    return-void
.end method

.method public final getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 484
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 489
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 494
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 504
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 514
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final isChecked(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 519
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final isClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 524
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 529
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 534
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public final isFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 539
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public final isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 544
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public final isPassword(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 549
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public final isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public final isSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 559
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public final obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 439
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final recycle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 659
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 660
    return-void
.end method

.method public final setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 569
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 570
    return-void
.end method

.method public final setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 574
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 575
    return-void
.end method

.method public final setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 589
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method

.method public final setClickable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "clickable"    # Z

    .prologue
    .line 594
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 595
    return-void
.end method

.method public final setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 599
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method

.method public final setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 604
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 605
    return-void
.end method

.method public final setFocusable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focusable"    # Z

    .prologue
    .line 609
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 610
    return-void
.end method

.method public final setFocused(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 614
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 615
    return-void
.end method

.method public final setLongClickable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "longClickable"    # Z

    .prologue
    .line 619
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 620
    return-void
.end method

.method public final setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 624
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 625
    return-void
.end method

.method public final setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 629
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 630
    return-void
.end method

.method public final setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 639
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 640
    return-void
.end method

.method public final setSelected(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "selected"    # Z

    .prologue
    .line 644
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 645
    return-void
.end method

.method public final setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "source"    # Landroid/view/View;

    .prologue
    .line 649
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 650
    return-void
.end method
