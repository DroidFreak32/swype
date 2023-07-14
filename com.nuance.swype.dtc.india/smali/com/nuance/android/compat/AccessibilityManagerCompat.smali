.class public Lcom/nuance/android/compat/AccessibilityManagerCompat;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# static fields
.field private static final AccessibilityManager_getEnabledAccessibilityServiceList:Ljava/lang/reflect/Method;

.field private static final AccessibilityManager_isTouchExplorationEnabled:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 15
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v1, "isTouchExplorationEnabled"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    .line 19
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v1, "getEnabledAccessibilityServiceList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/nuance/android/compat/CompatUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_getEnabledAccessibilityServiceList:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static isTalkBackEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 6
    .param p0, "am"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    sget-object v3, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_getEnabledAccessibilityServiceList:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 35
    sget-object v3, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_getEnabledAccessibilityServiceList:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 35
    invoke-static {v3, p0, v4}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 38
    .local v0, "spokenServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 42
    .end local v0    # "spokenServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .locals 2
    .param p0, "am"    # Landroid/view/accessibility/AccessibilityManager;

    .prologue
    const/4 v0, 0x0

    .line 26
    sget-object v1, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/nuance/android/compat/AccessibilityManagerCompat;->AccessibilityManager_isTouchExplorationEnabled:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/nuance/android/compat/CompatUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 29
    :cond_0
    return v0
.end method
