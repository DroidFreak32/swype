.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1641
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainCollectionInfo$50cb9c52(II)Ljava/lang/Object;
    .registers 4
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I

    .prologue
    .line 1665
    .line 2065
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 1665
    return-object v0
.end method

.method public obtainCollectionItemInfo$771e0323(IIIIZ)Ljava/lang/Object;
    .registers 7
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z

    .prologue
    .line 1672
    .line 2070
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 1673
    return-object v0
.end method

.method public final setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 1659
    .line 2046
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .end local p2    # "collectionInfo":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 1660
    return-void
.end method

.method public final setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 1733
    .line 3051
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p1    # "info":Ljava/lang/Object;
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .end local p2    # "collectionItemInfo":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 1734
    return-void
.end method
