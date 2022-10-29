.class Lcom/nuance/swype/input/view/GripPad$1;
.super Ljava/lang/Object;
.source "GripPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/view/GripPad;->setGripIsDrag(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/view/GripPad;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/view/GripPad;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/view/GripPad;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nuance/swype/input/view/GripPad$1;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$1;->this$0:Lcom/nuance/swype/input/view/GripPad;

    # getter for: Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;
    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$1;->this$0:Lcom/nuance/swype/input/view/GripPad;

    # getter for: Lcom/nuance/swype/input/view/GripPad;->listener:Lcom/nuance/swype/input/view/GripPad$GripButtonListener;
    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/GripPad$1;->this$0:Lcom/nuance/swype/input/view/GripPad;

    # getter for: Lcom/nuance/swype/input/view/GripPad;->grip:Landroid/view/View;
    invoke-static {v1}, Lcom/nuance/swype/input/view/GripPad;->access$200(Lcom/nuance/swype/input/view/GripPad;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/GripPad$GripButtonListener;->onClick(Landroid/view/View;)V

    .line 84
    :cond_17
    return-void
.end method
