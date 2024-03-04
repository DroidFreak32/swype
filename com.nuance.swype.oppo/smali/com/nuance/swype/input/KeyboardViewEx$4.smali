.class Lcom/nuance/swype/input/KeyboardViewEx$4;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/KeyboardViewEx;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 5452
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$4;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardViewEx$4;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$4;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$4;->val$ev:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->access$400(Lcom/nuance/swype/input/KeyboardViewEx;Landroid/view/MotionEvent;)V

    .line 5455
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$4;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->access$502(Lcom/nuance/swype/input/KeyboardViewEx;Z)Z

    .line 5456
    return-void
.end method
