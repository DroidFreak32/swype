.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMovementGranularities(Ljava/lang/Object;)I
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 721
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v0

    return v0
.end method

.method public final isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 701
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method

.method public final isVisibleToUser(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 691
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public final setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 706
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 707
    return-void
.end method

.method public final setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "granularities"    # I

    .prologue
    .line 716
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 717
    return-void
.end method

.method public final setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "visibleToUser"    # Z

    .prologue
    .line 696
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 697
    return-void
.end method
