.class Lcom/nuance/swype/input/settings/HorizontalListView$1;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;->bindGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$1;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$1;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    # getter for: Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
