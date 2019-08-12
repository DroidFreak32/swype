.class Lcom/nuance/swype/input/view/GripPad$2;
.super Ljava/lang/Object;
.source "GripPad.java"

# interfaces
.implements Lcom/nuance/swype/view/ShowHideAnimManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/view/GripPad;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/view/GripPad;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/view/GripPad;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/nuance/swype/input/view/GripPad$2;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideComplete(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public onShowComplete(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    return-void
.end method
