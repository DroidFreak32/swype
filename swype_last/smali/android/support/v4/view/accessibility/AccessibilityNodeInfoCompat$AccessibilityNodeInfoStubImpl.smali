.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # I

    .prologue
    .line 652
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 677
    return-void
.end method

.method public getActions(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 707
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 712
    return-void
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 726
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 746
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 961
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessibilityAction$442b94a0(I)Ljava/lang/Object;
    .registers 3
    .param p1, "actionId"    # I

    .prologue
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionInfo$50cb9c52(II)Ljava/lang/Object;
    .registers 4
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I

    .prologue
    .line 1014
    const/4 v0, 0x0

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
    .line 1035
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 952
    return-void
.end method

.method public removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Object;

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 892
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 837
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 842
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 857
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "clickable"    # Z

    .prologue
    .line 862
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionInfo"    # Ljava/lang/Object;

    .prologue
    .line 986
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "collectionItemInfo"    # Ljava/lang/Object;

    .prologue
    .line 995
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 867
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "enabled"    # Z

    .prologue
    .line 872
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focusable"    # Z

    .prologue
    .line 877
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "focused"    # Z

    .prologue
    .line 882
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "longClickable"    # Z

    .prologue
    .line 897
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "granularities"    # I

    .prologue
    .line 827
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 902
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 907
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 917
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "selected"    # Z

    .prologue
    .line 922
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "source"    # Landroid/view/View;

    .prologue
    .line 927
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "visibleToUser"    # Z

    .prologue
    .line 887
    return-void
.end method
