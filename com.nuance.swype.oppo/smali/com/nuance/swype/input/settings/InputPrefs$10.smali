.class Lcom/nuance/swype/input/settings/InputPrefs$10;
.super Ljava/lang/Object;
.source "InputPrefs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/InputPrefs;->createColorPickerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/InputPrefs;

.field final synthetic val$selected:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/InputPrefs;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->val$selected:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v1, p3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$402(Lcom/nuance/swype/input/settings/InputPrefs;I)I

    .line 788
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/InputPrefs;->access$000(Lcom/nuance/swype/input/settings/InputPrefs;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$500()[Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/InputPrefs;->access$400(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 790
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {}, Lcom/nuance/swype/input/settings/InputPrefs;->access$600()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->this$0:Lcom/nuance/swype/input/settings/InputPrefs;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/InputPrefs;->access$400(Lcom/nuance/swype/input/settings/InputPrefs;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 791
    iget-object v1, p0, Lcom/nuance/swype/input/settings/InputPrefs$10;->val$selected:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    return-void
.end method
