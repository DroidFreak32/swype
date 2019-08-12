.class Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;
.super Ljava/lang/Object;
.source "AccessibilityNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$notice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/accessibility/AccessibilityNotification;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;->this$0:Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    iput-object p2, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;->val$notice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityNotification$1;->val$notice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speakByToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method
