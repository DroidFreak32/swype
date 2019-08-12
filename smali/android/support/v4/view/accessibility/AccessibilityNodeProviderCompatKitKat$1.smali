.class public final Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatKitKat.java"


# instance fields
.field private synthetic val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;

    iget-object v0, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->createAccessibilityNodeInfo$f3a5639()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;

    iget-object v0, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findAccessibilityNodeInfosByText$2393931d()Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "focus"    # I

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;

    iget-object v0, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->findFocus$f3a5639()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;

    iget-object v0, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompatKitKat$AccessibilityNodeInfoBridge;->val$compat:Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction$5985f823()Z

    move-result v0

    return v0
.end method
