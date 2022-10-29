.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1802
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final newAccessibilityAction$442b94a0(I)Ljava/lang/Object;
    .registers 4
    .param p1, "actionId"    # I

    .prologue
    .line 1805
    .line 2089
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1805
    return-object v0
.end method

.method public final obtainCollectionInfo$50cb9c52(II)Ljava/lang/Object;
    .registers 4
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 1816
    .line 3044
    invoke-static {p1, p2, v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 1816
    return-object v0
.end method

.method public final obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;
    .registers 12
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z

    .prologue
    .line 1843
    .line 4050
    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 1843
    return-object v0
.end method

.method public final removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;

    .prologue
    .line 1827
    .line 4039
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .end local p2    # "action":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    .line 1827
    return v0
.end method
