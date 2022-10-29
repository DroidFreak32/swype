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
    .registers 1

    .prologue
    .line 1491
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMovementGranularities(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1549
    .line 3053
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v0

    .line 1549
    return v0
.end method

.method public final isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1529
    .line 2073
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    .line 1529
    return v0
.end method

.method public final isVisibleToUser(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 1519
    .line 2037
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    .line 1519
    return v0
.end method

.method public final setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 1534
    .line 2077
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 1535
    return-void
.end method

.method public final setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "granularities"    # I

    .prologue
    .line 1544
    .line 3049
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1545
    return-void
.end method

.method public final setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "visibleToUser"    # Z

    .prologue
    .line 1524
    .line 2041
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1525
    return-void
.end method
