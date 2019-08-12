.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;
.super Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 172
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 2
    .param p1, "compat"    # Landroid/support/v4/view/AccessibilityDelegateCompat;

    .prologue
    .line 127
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    new-instance v1, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;

    invoke-direct {v1, v0}, Landroid/support/v4/view/AccessibilityDelegateCompatIcs$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V

    return-object v1
.end method

.method public final newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 179
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 185
    invoke-virtual {p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 187
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 192
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/ViewGroup;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 198
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "eventType"    # I

    .prologue
    .line 204
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 205
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 210
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    .end local p1    # "delegate":Ljava/lang/Object;
    invoke-virtual {p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 211
    return-void
.end method
